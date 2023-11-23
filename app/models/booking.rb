class Booking < ApplicationRecord
  belongs_to :bike
  belongs_to :user
  validates :start_time, :end_time, presence: true


  # Virtual attribute getter
  def booking_period
    "#{start_time} to #{end_time}" if start_time && end_time
  end

  # Virtual attribute setter
  def booking_period=(value)
    dates = value.split(' to ')
    self.start_time = DateTime.parse(dates[0]) if dates[0].present?
    self.end_time = DateTime.parse(dates[1]) if dates[1].present?
  end
end
