class CreateSongUsers < ActiveRecord::Migration
  def change
    create_table :song_users do |t|
      t.integer :song_id
      t.string :user_id

      t.timestamps null: false
    end
  end
end
