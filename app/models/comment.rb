class Comment < ApplicationRecord
  belongs_to :user, counter_cache: true
  belongs_to :commentable, polymorphic: true

  validates :body, :user, presence: true
  validates_length_of :body, minimum: 10, maximum:450
end
