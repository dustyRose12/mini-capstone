class CartedPurse < ApplicationRecord
  belongs_to :user
  belongs_to :purse 
  belongs_to :order, optional: true

  def subtotal
      subtotal = purse.price * quantity
  end


end
