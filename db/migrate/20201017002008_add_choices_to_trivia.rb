class AddChoicesToTrivia < ActiveRecord::Migration[6.0]
  def change
    add_column :trivia, :answer, :string
    add_column :trivia, :option1, :string
    add_column :trivia, :option2, :string
    add_column :trivia, :option3, :string
  end
end
