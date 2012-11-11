class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :flickr_photo_id
      t.string :title
      t.references :camera
      t.references :lens
      t.datetime :taken_at
      t.string :exposure
      t.string :aperture
      t.string :iso_speed
      t.string :photo_url

      t.timestamps
    end
    add_index :photos, :camera_id
    add_index :photos, :lens_id
  end
end
