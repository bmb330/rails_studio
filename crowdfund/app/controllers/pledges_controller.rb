class PledgesController < ApplicationController
	before_action :set_project
	def index
		@pledges = @project.pledges
	end

	def new
		@pledge = @project.pledges.new
	end

	private
	
	def set_project
		@project = Project.find(params[:project_id])
	end
end
