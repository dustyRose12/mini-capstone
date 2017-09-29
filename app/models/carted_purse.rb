class CartedPurse < ApplicationRecord
  belongs_to :user
  belongs_to :purse 
  belongs_to :order, optional: true

  validates :quantity, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :quantity, numericality: { greater_than: 0 } #needs to be in separate lines

  def subtotal
      subtotal = purse.price * quantity
  end


end
