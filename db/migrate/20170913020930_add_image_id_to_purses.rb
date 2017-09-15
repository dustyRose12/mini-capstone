class AddImageIdToPurses < ActiveRecord::Migration[5.1]
  def change
    add_column :purses, :image_id, :integer
  end
end
