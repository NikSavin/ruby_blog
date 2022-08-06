class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :commentators, through: :comments, source: :user
  
  validates :title, :user, presence: true # :user равноценно :user.id
  validates_length_of :body, minimum: 10, maximum: 450
end
