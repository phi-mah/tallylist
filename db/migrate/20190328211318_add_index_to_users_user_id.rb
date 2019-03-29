class AddIndexToUsersUserId < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :userID, unique: true
  end
end
