class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :body, :user, :post, presence: true
  validates_length_of :body, minimum: 10, maximum:450
end
