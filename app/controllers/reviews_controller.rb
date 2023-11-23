class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @bike = Bike.find(params[:bike_id])
    @user = current_user

    @review.bike = @bike
    @review.user = @user
    @booking = Booking.new

    @user_has_no_booking = @bike.bookings.where("user_id = ?", @user).length == 0
    @user_has_alredy_reviewed = @bike.reviews.where("user_id = ?", @user).length != 0

    if @user_has_no_booking || @user_has_alredy_reviewed
      redirect_to bike_path(@bike)
    end

    if @review.save
      redirect_to bike_path(@bike)
    else
      render "bikes/show", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @bike = @review.bike
    @review.destroy

    redirect_to bike_path(@bike), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
