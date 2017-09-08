class Purse < ApplicationRecord

  def discounted?
    price < 50
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end

end
