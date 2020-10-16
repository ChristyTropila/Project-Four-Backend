class CreateTrivia < ActiveRecord::Migration[6.0]
  def change
    create_table :trivia do |t|
      t.string :question
      t.belongs_to :haunted_house

      t.timestamps
    end
  end
end
