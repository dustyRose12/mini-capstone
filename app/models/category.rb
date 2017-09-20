class Category < ApplicationRecord
  has_many :category_purses
  has_many :purses, through: :category_purses
end
