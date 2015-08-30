class PlaceDecorator < Draper::Decorator
  delegate_all

  def full_address
    "#{street}, #{city}, #{country}"
  end

  def averag_rating_show
    avg = object.reviews.average(:grade)
  	avg.nil? ? 0 : avg
  end
  
  def google_map
    "http://maps.google.com/maps/api/staticmap?size=450x300&sensor=false&zoom=16&markers=#{place.latitude}%2C#{place.longitude}"
  end
end
