class RemoveImageIdFromPurses < ActiveRecord::Migration[5.1]
  def change
    remove_column :purses, :image_id, :integer
  end
end
