class StylesController < InheritedResources::Base

  private

    def style_params
      params.require(:style).permit(:style)
    end
end

