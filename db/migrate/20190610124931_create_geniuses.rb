class CreateGeniuses < ActiveRecord::Migration[5.2]
  def change
    create_table :geniuses do |t|
      t.string :name
      t.integer :year
      t.text :description
      t.integer :cost
      t.string :category
      t.integer :iq
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
