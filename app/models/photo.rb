class Photo < ActiveRecord::Base
  belongs_to :camera
  belongs_to :lens
  attr_accessible :aperture, :exposure, :flickr_photo_id, :iso_speed, :photo_url, :taken_at, :title, :camera_id, :lens_id
end
