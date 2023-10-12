class AddPhrase10ToWords < ActiveRecord::Migration[6.1]
  def change
    add_column :words, :phrase10, :string
  end
end
