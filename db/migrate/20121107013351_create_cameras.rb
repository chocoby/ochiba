class CreateCameras < ActiveRecord::Migration
  def change
    create_table :cameras do |t|
      t.references :manufacturer
      t.string :name, null: false, limit: 200

      t.timestamps
    end
  end
end
