
class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist

  has_many :cities, through: :join_table_favorite_cities
end