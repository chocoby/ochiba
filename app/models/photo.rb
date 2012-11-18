class Photo < ActiveRecord::Base
  belongs_to :camera
  belongs_to :lens

  validates :flickr_photo_id, presence: true
  validates :title, presence: true
  validates :camera_id, presence: true
  validates :lens_id, presence: true
  validates :taken_at, presence: true
  validates :exposure, presence: true
  validates :aperture, presence: true
  validates :iso_speed, presence: true
  validates :focal_length, presence: true
  validates :photo_url, presence: true
  validates :photo_page_url, presence: true

  scope :new_uploads, order("id DESC")

  attr_accessible :aperture, :exposure, :flickr_photo_id, :iso_speed, :focal_length,
    :photo_url, :photo_page_url, :taken_at, :title, :camera_id, :lens_id

  #
  # Flickr から EXIF を取得しセットする
  #
  def assign_exif
    photo_data = Ochiba::Flickr.new(photo_id: self.flickr_photo_id)

    info = photo_data.info
    exif = photo_data.exif

    photo_page_url = info.urls.find { |u| u.type == 'photopage' }._content

    self.title = info.title unless self.title.present?
    # TODO: camera
    self.taken_at = info.dates.taken unless self.taken_at.present?
    self.exposure = exif.exposure unless self.exposure.present?
    self.aperture = exif.aperture unless self.aperture.present?
    self.iso_speed = exif.iso_speed unless self.iso_speed.present?
    self.focal_length = exif.focal_length.gsub('.0 mm', '') unless self.focal_length.present?
    self.photo_url = FlickRaw.url_b(info) unless self.photo_url.present?
    self.photo_page_url = photo_page_url unless self.photo_page_url.present?

    unless self.lens
      lens = Lens.find_by_lens_id(exif.lens_id)
      self.lens = lens if lens
    end
  end
end
