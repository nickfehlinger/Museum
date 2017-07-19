class TechniquesController < InheritedResources::Base

  private

    def technique_params
      params.require(:technique).permit(:technique)
    end
end

