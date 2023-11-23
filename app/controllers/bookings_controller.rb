class BookingsController < ApplicationController
  def index
    @bookings = Booking.where("user_id = ? AND end_time >= ?", current_user.id, Time.now).order(start_time: :asc)
    @past_bookings = Booking.where("user_id = ? AND end_time < ?", current_user.id, Time.now).order(start_time: :asc)
  end

  def create
    start_date, end_date = booking_params[:booking_period].split(' to ')

    start_time = DateTime.parse(start_date)
    end_time = DateTime.parse(end_date)

    @booking = Booking.new(start_time: start_time, end_time: end_time)
    @bike = Bike.find(params[:bike_id])
    @user = current_user
    @booking.bike = @bike
    @booking.user = @user

    if @booking.valid?
      @days = (@booking.end_time - @booking.start_time) / (60 * 60 * 24)
      @booking.total_price = @bike.price_per_day * @days
      @booking.save
      redirect_to bookings_path
    else
      render "bikes/show", status: :unprocessable_entity
    end
  end




  private

  def booking_params
    params.require(:booking).permit(:booking_period)
  end
end
