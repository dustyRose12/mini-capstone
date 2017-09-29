class Purse < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :category_purses
  has_many :categories, through: :category_purses
  # has_many :orders #gets replaced
  has_many :carted_purses
  has_many :orders, through: :carted_purses #not needed right now, but leave it anyway just in case

  validates :name, presence: true
  validates :name, uniqueness: true #validates that the product has a unique name
  validates :price, presence: true
  validates :price, numericality: true #so that it's some sort of number
  validates :description, length: { in: 200..500 }
  # validates :description, length: { minimum: 200 } this is same as above, gives you full error in rails console so this version is better
  # validates :description, length: { maximum: 500 }





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
