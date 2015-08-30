class EventsController < ApplicationController
  expose(:events) { Event.all.includes(:place) }
  expose(:event)
end
