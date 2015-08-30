module PlacesHelper
  def user_can_add_review?(place)
    place.reviews.where(user: current_user).count == 0
  end
end
