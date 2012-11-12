class AddPhotoPageUrlToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :photo_page_url, :string, null: false, after: :photo_url
  end
end
