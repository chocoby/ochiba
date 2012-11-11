class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :flickr_photo_id, null: false, limit: 50
      t.string :title, limit: 100
      t.references :camera, null: false
      t.references :lens, null: false
      t.datetime :taken_at, null: false
      t.string :exposure, null: false, limit: 10
      t.string :aperture, null: false, limit: 10
      t.string :iso_speed, null: false, limit: 10
      t.string :photo_url, null: false

      t.timestamps
    end
    add_foreign_key :photos, :cameras
    add_foreign_key :photos, :lenses
  end
end
