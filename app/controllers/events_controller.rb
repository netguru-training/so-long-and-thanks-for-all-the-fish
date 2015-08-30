class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  expose(:events) { Event.all.includes(:place) }
  expose_decorated(:event, attributes: :event_params)

  def create
    if event.save
      redirect_to event_path(event), notice: I18n.t('shared.created', resource: 'Event')
    else
      render 'events/new'
    end
  end

  def update
    if event.save
      redirect_to event_path(event), notice: I18n.t('shared.updated', resource: 'Event')
    else
      render 'events/edit'
    end
  end

  def destroy
    if event.destroy
      redirect_to events_path, notice: I18n.t('shared.deleted', resource: 'Event')
    else
      render 'events/show'
    end
  end
  
  private

    def event_params
      params.require(:event).permit(:title, :description, :date, :place_id)
    end

end
