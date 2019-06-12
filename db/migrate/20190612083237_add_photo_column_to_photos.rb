class AddPhotoColumnToPhotos < ActiveRecord::Migration[5.2]
  def change
    remove_column :photos, :url
    add_column :photos, :photo, :string
  end
end
