class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo, dependent: :destroy
  validates :name, :category, :price_per_day, :size, :description, :address, presence: true
  validates :name, uniqueness: true
end
