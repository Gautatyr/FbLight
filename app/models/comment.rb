class Comment < ApplicationRecord
  validates :body, length: { in: 1..8000 } 
  belongs_to :user
  belongs_to :post
end
