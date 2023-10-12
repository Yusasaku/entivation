class AddDetailsToWords < ActiveRecord::Migration[6.1]
  def change
    add_column :words, :phrase1, :string
    add_column :words, :phrase2, :string
    add_column :words, :phrase3, :string
    add_column :words, :phrase4, :string
    add_column :words, :phrase5, :string
    add_column :words, :phrase6, :string
    add_column :words, :phrase7, :string
    add_column :words, :phrase8, :string
    add_column :words, :phrase9, :string
  end
end
