class Review < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  validates :comment, :rating, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5], message: '%<value>s is not a valid rating' }
  validates :comment, length: { minimum: 6, message: 'Minimum comment length is 6 characters' }
end
