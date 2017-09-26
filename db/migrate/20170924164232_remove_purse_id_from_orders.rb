class RemovePurseIdFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :purse_id, :integer
  end
end
