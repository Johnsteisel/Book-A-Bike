class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many_attached :photos, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, :category, :price_per_day, :size, :description, :address, presence: true
  validates :name, uniqueness: true

  include PgSearch::Model
  multisearchable against: [:name, :category, :size]

  pg_search_scope :global_search,
  against: [ :name, :category, :size ],
  associated_against: {
    user: [:username]
  },
  using: {
    tsearch: { prefix: true }
  }

  def avg_rating
    if self.reviews.count == 0
      nil
    else
      reviews = self.reviews.map { |review| review.rating }
      reviews.sum.fdiv(reviews.length)
    end
  end
end
