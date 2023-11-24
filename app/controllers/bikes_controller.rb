class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_bike, only: [:show, :edit, :update, :destroy]
  def index
    @bikes = Bike.all
    if params[:query].present?
      @bikes = Bike.global_search(params[:query])
    end
  end

  def show
    @review = Review.new
    @booking = Booking.new

    @marker =
      if @bike.latitude && @bike.longitude
        {
          lat: @bike.latitude,
          lng: @bike.longitude,
          info_window_html: render_to_string(partial: "info_window", locals: { bike: @bike })
        }
      end

    @booked_dates = @bike.bookings.pluck(:start_time, :end_time).map do |start_time, end_time|
      { from: start_time, to: end_time }
    end
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user_id = current_user.id
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @bike.update(bike_params)

    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bike.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:name, :category, :price_per_day, :avg_rating, :size, :description, :address, photos: [])
  end
end
