class EventDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  def cover
  'http://lorempixel.com/400/300/' + %W(abstract nightlife transport).sample + '?a=' + SecureRandom.uuid
  end
  
  def format_date
    l(object.date, format: '%d.%m.%Y %H:%M')
  end
end
