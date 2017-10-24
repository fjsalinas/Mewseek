class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :year
      t.integer :artist_id
      t.integer :album_id
      t.integer :gender_id
      t.integer :duration
      t.integer :punctuation

      t.timestamps null: false
    end
  end
end
