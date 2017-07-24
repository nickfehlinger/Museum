class ProgramsController < ApplicationController
	
  private

    def program_params
      params.require(:program).permit(:title, :description)
    end
end

