class CreateCartedPurses < ActiveRecord::Migration[5.1]
  def change
    create_table :carted_purses do |t|
      t.integer :user_id
      t.integer :purse_id
      t.integer :quantity
      t.string :status
      t.integer :order_id

      t.timestamps
    end
  end
end
