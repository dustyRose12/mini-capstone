class CategoryPurse < ApplicationRecord
  belongs_to :purse
  belongs_to :category
end
