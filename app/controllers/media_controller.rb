class MediaController < InheritedResources::Base

  private

    def medium_params
      params.require(:medium).permit(:medium)
    end
end

