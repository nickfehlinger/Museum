class OwnersController < InheritedResources::Base

  private

    def owner_params
      params.require(:owner).permit(:person_id, :piece_id, :year_bought, :year_sold, :price_bought, :price_sold, :location_bought, :location_sold)
    end
end

