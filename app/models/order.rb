class Order < ApplicationRecord
  belongs_to :purse, optional: true
  belongs_to :user, optional: true
  
  has_many :carted_purses
  has_many :purses, through: :carted_purses

  # def initialize(options_hash)
  #   super(options_hash) #this is an unnecessary step to make it drier, but not the usual way
  #   calculate_totals
  # end

  def calculate_subtotal
     self.subtotal = purse.price * quantity
  end

  def calculate_tax
      self.tax = subtotal * 0.09
  end

  def calculate_total
      self.total = subtotal + tax
  end

  def calculate_totals
    calculate_subtotal
    calculate_tax
    calculate_total
  end


end
