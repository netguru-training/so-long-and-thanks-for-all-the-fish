class ReviewsController < ApplicationController
  expose(:review, attributes: :review_params)

  def create
    review.user = current_user
    if review.save
      redirect_to review.place
    else
      redirect_to review.place
    end
  end

  def destroy
    if review.user == current_user
      review.destroy
      redirect_to review.place
    else
      redirect_to review.place
    end
  end

  private

  def review_params
    params.require(:review).permit(:text, :grade, :place_id)
  end
end
