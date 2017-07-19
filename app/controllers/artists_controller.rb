class ArtistsController < InheritedResources::Base

  private

    def artist_params
      params.require(:artist).permit(:person_id, :piece_id)
    end
end

