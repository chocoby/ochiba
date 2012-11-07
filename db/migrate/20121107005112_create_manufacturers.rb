class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name, null: false, limit: 50

      t.timestamps
    end
  end
end
