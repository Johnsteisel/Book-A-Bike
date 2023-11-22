class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, :category, :price_per_day, :size, :description, :address, presence: true
  validates :name, uniqueness: true
end
