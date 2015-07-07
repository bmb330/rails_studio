class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		@project.update(params.require(:project).permit(:name, :description, :website, :target_pledge_amount, :pledging_ends_on))
		redirect_to @project
	end
end
