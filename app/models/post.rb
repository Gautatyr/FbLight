class Post < ApplicationRecord
  validates :body, length: { in: 6..8000 }   
  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :delete_all
end
