class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :edit, :destroy]

  expose(:review, attributes: :review_params)
  expose(:place)

  def create
    review.user = current_user
    if review.save
      redirect_to review.place, notice: t('messages.reviews.add')
    else
      render 'places/show'
    end
  end

  def update
    if is_current_user_review?
      review.save
      redirect_to review.place, notice: t('messages.reviews.edit')
    else
      render 'reviews/edit'
    end
  end

  def destroy
    if is_current_user_review?
      review.destroy
      flash[:notice] = t('messages.reviews.delete')
      redirect_to review.place
    else
      render 'places/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:text, :grade, :place_id)
  end

  def is_current_user_review?
    review.user == current_user
  end
end
