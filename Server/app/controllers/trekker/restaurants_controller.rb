class Trekker::RestaurantsController < ApplicationController
     before_action :authenticate_user!
     before_action :require_authorized_for_current_section

     def new
          @restaurant = Restaurant.new
     end

     def create 
          @restaurant = current_section.restaurants.create(restaurant_params)
          redirect_to trekker_trek_path(current_section.trek)
     end

     private

     def require_authorized_for_current_section
          if current_section.trek.user != current_user
               return render :text => 'Unauthorized', :status => :unauthorized
          end
     end

     def restaurant_params
       params.require(:restaurant).permit(:name, :description, :longitude, :latitude)
     end

     helper_method :current_section
     def current_section
          @current_section ||= Section.find(params[:section_id])
     end
end