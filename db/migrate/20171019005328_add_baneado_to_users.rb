class AddBaneadoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :baneado, :boolean
  end
end
