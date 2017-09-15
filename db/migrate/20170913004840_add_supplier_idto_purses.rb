class AddSupplierIdtoPurses < ActiveRecord::Migration[5.1]
  def change
    add_column :purses, :supplier_id, :integer
  end
end
