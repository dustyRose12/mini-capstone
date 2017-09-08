class ChangePriceOnPurses < ActiveRecord::Migration[5.1]
  def change
    change_column :purses, :price, "numeric USING CAST(price AS numeric)"
    change_column :purses, :price, :decimal, precision: 7, scale: 2
  end
end
