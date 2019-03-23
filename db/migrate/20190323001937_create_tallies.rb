class CreateTallies < ActiveRecord::Migration[5.2]
  def change
    create_table :tallies do |t|
      t.string :new
      t.string :show

      t.timestamps
    end
  end
end
