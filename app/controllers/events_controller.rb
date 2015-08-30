class EventsController < ApplicationController
  expose(:events) { Event.all.includes(:place) }
  expose_decorated(:event)
end
