class CreateCameras < ActiveRecord::Migration
  def change
    create_table :cameras do |t|
      t.reference :manufacturer
      t.string :name

      t.timestamps
    end
  end
end
