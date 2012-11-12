class Camera < ActiveRecord::Base
  belongs_to :manufacturer

  validates :manufacturer_id, presence: true
  validates :name, presence: true

  attr_accessible :manufacturer_id, :name
end
