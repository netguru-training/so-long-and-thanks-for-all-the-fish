class PlaceDecorator < Draper::Decorator
  delegate_all

  def full_address
    "#{street}, #{city}, #{country}"
  end
  
  def averag_rating_show
    avg = object.reviews.average(:grade)
  	avg.nil? ? "Average rating: %.2f" % 0 : "Average rating: %.2f" % avg
  end
  
  def avg_price_show
    "Average price: #{avg_price}"
  end
end
