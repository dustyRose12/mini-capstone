class CategoryPurse < ApplicationRecord
  belongs_to :purse
  belongs_to :category

  # validates :category_id, uniqueness: {scope :purse_id, message: "each category should be assigned to purse once "}

end
