class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :genius, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
