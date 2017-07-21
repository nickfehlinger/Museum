class LocationsController < ApplicationController
  def new
  end

  def create
  end

  def show
  	@location = Location.find_by(params[:id])
  	@pieces = @location.pieces.all
  end
end
