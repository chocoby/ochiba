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
  validates :photo_url, presence: true

  attr_accessible :aperture, :exposure, :flickr_photo_id, :iso_speed, :photo_url, :taken_at, :title, :camera_id, :lens_id
end
