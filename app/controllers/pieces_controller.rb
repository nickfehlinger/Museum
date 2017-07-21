class PiecesController < ApplicationController
 def show
 	@piece = Piece.find_by(id: params[:id])
 end

  private

    def piece_params
      params.require(:piece).permit(:title, :person_id, :size, :description, :value, :location_id, :active)
    end
end

