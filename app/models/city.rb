class City < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :lat, presence: true
  validates :long, presence: true
  validates :picture, presence: true
  validates :overall, presence: true, :inclusion => { :in => 0..5 }
  validates :activities, presence: true, :inclusion => { :in => 0..5 }
  validates :cost, presence: true
  validates :works_places, presence: true, :inclusion => { :in => 0..5 }
  validates :healthcare, presence: true, :inclusion => { :in => 0..5 }
  validates :internet, presence: true
  validates :safety, presence: true, :inclusion => { :in => 0..5 }

  has_many :join_table_favorite_cities, dependent: :destroy
  has_many :users, through: :join_table_favorite_cities
  belongs_to :country

end
