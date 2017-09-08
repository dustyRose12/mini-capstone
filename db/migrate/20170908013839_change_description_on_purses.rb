class ChangeDescriptionOnPurses < ActiveRecord::Migration[5.1]
  def change
    change_column :purses, :description, :text
  end
end
