class CreateCategoryPurses < ActiveRecord::Migration[5.1]
  def change
    create_table :category_purses do |t|
      t.integer :category_id
      t.integer :purse_id

      t.timestamps
    end
  end
end
