class CreateTrickTreats < ActiveRecord::Migration[6.0]
  def change
    create_table :trick_treats do |t|
      t.string :name
      t.integer :category
      t.belongs_to :haunted_house

      t.timestamps
    end
  end
end
