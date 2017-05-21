class UsersController < ApplicationController
	before_action :set_user, only: [:update_profile, :show]
	def index
		@users = User.all
	end

	def show
	end
  
  def update_profile
  	@profile = UserProfile.new
  end

  private
  def set_user
		@user = User.find(params[:id])
  end
end