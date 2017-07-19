class PiecesController < InheritedResources::Base

  private

    def piece_params
      params.require(:piece).permit(:title, :size, :description, :value, :location, :active)
    end
end

