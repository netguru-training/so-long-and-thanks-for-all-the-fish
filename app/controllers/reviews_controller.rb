class ReviewsController < ApplicationController
  expose(:review, attributes: :review_params)
  expose(:place)

  def create
    review.user = current_user
    if review.save
      flash[:notice] = t('messages.reviews.add')
      redirect_to review.place
    else
      render 'places/show'
    end
  end

  def update
    if review.user == current_user
      review.save
      flash[:notice] = t('messages.reviews.edit')
      redirect_to review.place
    else
      render 'reviews/edit'
    end
  end

  def destroy
    if review.user == current_user
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
end
