class Image < ApplicationRecord

  belongs_to :purse
  
  validates :url, presence: true
  
end
