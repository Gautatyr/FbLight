class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :delete_all
end
