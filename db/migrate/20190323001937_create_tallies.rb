class CreateTallies < ActiveRecord::Migration[5.2]
  def change
    create_table :tallies do |t|
      t.timestamps
    end
  end
end
