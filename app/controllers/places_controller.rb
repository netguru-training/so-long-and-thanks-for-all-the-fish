class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  expose(:place, attributes: :place_params)
  expose(:places)
  expose(:review)

  def create
    if place.save
      redirect_to place_path(place), notice: I18n.t('shared.created', resource: 'Place')
    else
      render :new
    end
  end

  def update
    if place.save
      redirect_to place_path(place), notice: I18n.t('shared.updated', resource: 'Place')
    else
      render :edit
    end
  end

  def destroy
    if place.destroy
      redirect_to places_path, notice: I18n.t('shared.deleted', resource: 'Place')
    else
      render place_path(place)
    end
  end

  private

    def place_params
      params.require(:place).permit(:name, :street, :city, :country, :description, :avg_price)
    end
end
