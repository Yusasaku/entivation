class AddFrequencyToWords < ActiveRecord::Migration[6.1]
  def change
    add_column :words, :frequency, :integer
  end
end
