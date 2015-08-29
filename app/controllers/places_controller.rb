class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  expose(:place)
  expose(:places)

def create
  
end

end
