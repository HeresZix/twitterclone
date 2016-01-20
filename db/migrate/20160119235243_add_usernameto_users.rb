class AddUsernametoUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string # add new column to table 'users'
    add_index :users, :username, unique: true
  end
end
