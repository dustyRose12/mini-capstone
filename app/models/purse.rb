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

  # def self.random
  #   products = Purse.all
  #   all_ids = []
  #   products.each do |product|
  #     all_ids << product.all_id
  #   end

  #   @product = Product.find(all_ids.sample)
  #   render "show.html.erb"
  # end



end
