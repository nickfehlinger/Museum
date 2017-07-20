class PiecesController < InheritedResources::Base

  private

    def piece_params
      params.require(:piece).permit(:title, :person_id, :size, :description, :value, :location_id, :active)
    end
end

