class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_many_attached :photos, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, :category, :price_per_day, :size, :description, :address, presence: true
  validates :name, uniqueness: true

  def avg_rating
    if self.reviews.count == 0
      nil
    else
      reviews = self.reviews.map { |review| review.rating }
      reviews.sum / reviews.length
    end
  end
end
