class PlaceDecorator < Draper::Decorator
  delegate_all

  def full_address
    "#{street}, #{city}, #{country}"
  end
  
  def averag_rating_show
    "Average rating: "
    
  end
  def avg_price_show
    "Average price: #{avg_price}"
  end
end
