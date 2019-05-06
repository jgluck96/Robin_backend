class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render json: @reviews
  end

  def create
    @review.create(review_params)
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :item_id, :rating, :comment)
  end
end
