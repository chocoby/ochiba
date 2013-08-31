class Camera < ActiveRecord::Base
  belongs_to :manufacturer

  validates :manufacturer_id, presence: true
  validates :name, presence: true

  # メーカー名 + モデル名
  def product_name
    "#{self.manufacturer.name} #{self.name}"
  end
end
