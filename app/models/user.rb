class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :commented_posts, through: :comments, source: :commentable, source_type: :Post
  has_many :commented_users, through: :comments, source: :commentable, source_type: :User

  validates :name, presence: true
  validates :name, length: { minimum: 2, maximum: 20 }
  validates :email, uniqueness: true

  before_destroy :log_before_destroy
  after_destroy :log_after_destroy

  private

  def log_before_destroy
  	Rails.logger.info "!!!! Собираемся удалить пользователя - #{@name} !!!!"
  end

  def log_after_destroy
  	Rails.logger.info "### Пользователь под ником - #{@name} удалён. ###"
  end
end
