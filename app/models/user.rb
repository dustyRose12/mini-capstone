class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :carted_purses #could also do has many purses through carted purses, but this relationship is not needed right now
  validates :email, uniqueness: true
  # validates :email

  def current_cart
    carted_purses.where(status: "carted")
  end
 
end
