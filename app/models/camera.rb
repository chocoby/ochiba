class Camera < ActiveRecord::Base
  belongs_to :manufacturer
  attr_accessible :manufacturer_id, :name
end
