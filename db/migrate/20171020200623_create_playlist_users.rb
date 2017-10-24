class CreatePlaylistUsers < ActiveRecord::Migration
  def change
    create_table :playlist_users do |t|
      t.integer :playlist_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
