class Purse < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_purses
  has_many :categories, through: :category_purses

  def discounted?
    price < 1000
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end

#add this to make the default image not empty
  def default_image
    if images.count > 0
      images.first.url
    else
      "http://owgcc.com/wp-content/uploads/2015/07/Mini-Designer-Handbags.jpg"
    end
  end


  def self.random
    purses = Purse.all
    all_ids = []
    purses.each do |purse|
      all_ids << purse.id
    end
    all_ids.sample

    # @purse = Purse.find(all_ids.sample)
    # render "show.html.erb"
  end



end
