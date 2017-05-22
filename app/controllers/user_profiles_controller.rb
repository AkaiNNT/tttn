class UserProfilesController < ApplicationController
	def create
		@profile = UserProfile.new(profile_params.merge(user_id: current_user.id))
	end

	private
	def profile_params
		params.require(:user_profile).permit(:dob, :age, :phone, :sex, :height, :weight, :hobby, :location, :hometown, :content, :looking_for)
	end
end