class UserProgramsController < ApplicationController
	def create
		@user_program = UserProgram.create(user_id: current_user.id, program_id: params[:program_id])
		respond_to do |format|
			format.js
			format.json {render :show, status: :created, location: @user_program}
		end
	end
end
