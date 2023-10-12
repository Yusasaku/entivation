class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.string :phrase
      t.text :about
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
