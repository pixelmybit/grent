class AddPhotoToGeniuses < ActiveRecord::Migration[5.2]
  def change
    add_column :geniuses, :photo, :string
  end
end
