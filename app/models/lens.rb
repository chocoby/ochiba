class Lens < ActiveRecord::Base
  belongs_to :manufacturer

  validates :manufacturer_id, presence: true
  validates :name, presence: true

  attr_accessible :manufacturer_id, :lens_id, :name

  #
  # メーカー名 + モデル名
  #
  def product_name
    "#{self.manufacturer.name} #{self.name}"
  end
end
