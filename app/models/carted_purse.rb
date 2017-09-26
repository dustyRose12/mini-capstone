class CartedPurse < ApplicationRecord
  belongs_to :user
  belongs_to :purse 
  belongs_to :order, optional: true

  def subtotal
      subtotal = self.purse.price * quantity
  end

  def tax
      tax = subtotal * 0.09
  end

  def total
      total = subtotal + tax
  end

  # def calculate_totals
  #   calculate_subtotal
  #   calculate_tax
  #   calculate_total
  # end


end
