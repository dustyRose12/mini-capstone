class Purse < ApplicationRecord

  def sale_message
    if price < 2
      return "Discount Item!"
    else
      return "Everyday Value!"
    end
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end

end
