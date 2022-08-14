class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :commentators, through: :comments, source: :user
  
  validates :title, :user, presence: true # :user равноценно :user.id
  validates_length_of :body, minimum: 10, maximum: 450

  scope :written_by_moderators, -> { joins(:user).where(users: { moderator: true })}
  # def self.written_by_moderators
  #	  Post.joins(:user).where(users: {moderator: true})
  # end
end
