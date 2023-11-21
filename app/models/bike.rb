class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :category, :price_per_day, :avg_rating, :size, :description, :address, presence: true
  validates :name, uniqueness: true
end
