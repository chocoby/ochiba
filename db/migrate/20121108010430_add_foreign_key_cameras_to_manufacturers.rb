class AddForeignKeyCamerasToManufacturers < ActiveRecord::Migration
  def change
    add_foreign_key :cameras, :manufacturers
  end
end
