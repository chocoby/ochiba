class AddFocalLengthToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :focal_length, :string, limit: 10, null: false, after: :iso_speed, default: ''
  end
end
