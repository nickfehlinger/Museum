class LocationsController < ApplicationController
  def new
  end

  def create
  end


  def show
  	@location = Location.find_by(id: params[:id])
  	@pieces = @location.pieces.all
  end

end
