class City < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :lat, presence: true
  validates :long, presence: true
  validates :picture, presence: true
  validates :overall, presence: true
  validates :activities, presence: true
  validates :cost, presence: true
  validates :works_places, presence: true
  validates :healthcare, presence: true
  validates :internet, presence: true
  validates :safety, presence: true

  has_many :users, through: :join_table_favorite_cities
  belongs_to :country

end
