class RestaurantsController < ApplicationController

     def show
     end

     private

     helper_method :current_restaurant
     def current_restaurant
          @current_restaurant ||= Restaurant.find(params[:id])
     end

end
