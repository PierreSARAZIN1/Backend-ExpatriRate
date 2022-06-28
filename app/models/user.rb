
class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist

  has_many :join_table_favorite_cities, dependent: :destroy
  has_many :cities, through: :join_table_favorite_cities

  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  
end