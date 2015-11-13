class CheckinController < ApplicationController
	before_action :authenticate_user!

	def create
		current_user.checkins.create(:restaurant => current_restaurant)
		redirect_to restaurant_path(current_restaurant)
	end

	private

	def current_restaurant
		@current_restaurant ||= Restaurant.find(params[:restaurant_id])
	end

end
