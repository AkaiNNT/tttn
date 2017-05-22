class UsersController < ApplicationController
	before_action :set_user, only: [:update_profile, :show]
	def index
		@users = User.all
	end

	def show
	end
  
  def update_profile
  	if current_user.updated_profile?
  		@profile = UserProfile.find_by(user_id: current_user.id)
  	else
  		@profile = UserProfile.new
  	end
  end

  private
  def set_user
		@user = User.find(params[:id])
  end
end