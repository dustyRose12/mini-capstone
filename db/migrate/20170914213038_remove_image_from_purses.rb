class RemoveImageFromPurses < ActiveRecord::Migration[5.1]
  def change
    remove_column :purses, :image, :string
  end
end
