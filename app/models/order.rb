class Order < ApplicationRecord
  # belongs_to :purse, optional: true //we deleted this when we added carted_purse associations, because order now has many products
  belongs_to :user, optional: true
  
  has_many :carted_purses #this line goes first so that orders can find the product id thorugh the carted_products
  has_many :purses, through: :carted_purses

  def calculate_subtotal
    sum = 0 #call it sum so it doesn't get confused with subtotal, but in reality it is subtotal
    carted_purses.each do |carted_purse|
      sum += carted_purse.subtotal
    end

    self.subtotal = sum
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
    #self.save #could put the save here instead of in the controller
  end


  # def initialize(options_hash)
  #   super(options_hash) #this is an unnecessary step to make it drier, but not the usual way
  #   calculate_totals
  # end


end
