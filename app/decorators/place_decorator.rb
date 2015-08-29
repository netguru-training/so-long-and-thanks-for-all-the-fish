class PlaceDecorator < Draper::Decorator
  delegate_all

  def full_address
    "#{street}, #{city}, #{country}"
  end
end
