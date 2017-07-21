class LocationsController < ApplicationController
  def new
  end

  def create
  end
<<<<<<< HEAD
=======

  def show
  	@location = Location.find_by(params[:id])
  	@pieces = @location.pieces.all
  end
>>>>>>> 68109f39247bd4cdf3856ef55e3397995a3af0b1
end
