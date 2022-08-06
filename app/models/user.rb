class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :commentated_post, through: :comments, source: :post

  validates :name, presence: true
  validates :name, length: { minimum: 2, maximum: 20 }
  validates :email, uniqueness: true
end
