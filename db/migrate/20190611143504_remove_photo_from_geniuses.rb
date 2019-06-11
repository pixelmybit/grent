class RemovePhotoFromGeniuses < ActiveRecord::Migration[5.2]
  def change
    remove_column :geniuses, :photo
  end
end
