class AddUserRefToTallies < ActiveRecord::Migration[5.2]
  def change
    add_reference :tallies, :user, foreign_key: true
  end
end
