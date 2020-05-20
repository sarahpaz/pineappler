class GoalsController < ApplicationController
	def index
		@goal = Goal.find_by(id: params[:goal_id])
	end
	
	def new
		@goal = current_user.goals.build
	end

	def create
		@goal = current_user.goals.build(goal_params)
		@goal.user_id = current_user.id
		if @goal.save
			redirect_to goal_path(@goal)
		else
			render :new
		end
	end

	def show
		@goal = current_user.goals.find(params[:id])
	end

	def goal_params
		params.require(:goal).permit(:name)
	end
end