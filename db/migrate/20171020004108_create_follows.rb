class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.string :user_id_1
      t.string :user_id_2

      t.timestamps null: false
    end
  end
end
