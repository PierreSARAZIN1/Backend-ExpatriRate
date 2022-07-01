
class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist

  has_many :join_table_favorite_cities, dependent: :destroy
  has_many :cities, through: :join_table_favorite_cities

  validates :email, presence: true, format: { with: /[a-zA-Z0-9.+-]+@[a-zA-Z]+.+[a-zA-Z]{2,3}/,
    message: "Please respect email format : email@email.com" }
  
  validates :password, presence: true, length: { in: 6..30 }

  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  
end