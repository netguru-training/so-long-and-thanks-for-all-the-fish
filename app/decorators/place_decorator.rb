class PlaceDecorator < Draper::Decorator
  delegate_all

  def full_address
    "#{street}, #{city}, #{country}"
  end

  def averag_rating_show
    avg = object.reviews.average(:grade)
  	avg.nil? ? 0 : avg
  end
end
