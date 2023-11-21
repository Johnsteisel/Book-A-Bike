class Booking < ApplicationRecord
  belongs_to :bike
  belongs_to :user
  validates :start_time, :end_time, presence: true
end
