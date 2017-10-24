class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :year
      t.integer :artist_id
      t.integer :gender_id

      t.timestamps null: false
    end
  end
end
