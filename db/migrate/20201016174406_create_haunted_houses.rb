class CreateHauntedHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :haunted_houses do |t|
      t.float :lng
      t.float :lat

      t.timestamps
    end
  end
end
