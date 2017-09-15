class AddPurseIdToImages < ActiveRecord::Migration[5.1]
  def change
            add_column :images, :purse_id, :integer
  end
end
