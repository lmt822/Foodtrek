class Trekker::TreksController < ApplicationController
     before_action :authenticate_user!
     before_action :require_authorized_for_current_trek, :only => [:show]
     
     def new
          @trek = Trek.new
     end

     def create
          @trek = current_user.treks.create(trek_params)
          if @trek.valid?
              redirect_to trekker_trek_path(@trek)
          else
               render :new, :status => :unprocessable_entity
          end
     end

     def show
     end


     private

     def require_authorized_for_current_trek
          if current_trek.user != current_user
               render :text => "Unauthorized", :status => :unauthorized
          end
     end


     helper_method :current_trek
     def current_trek
          @current_trek ||= Trek.find(params[:id])
     end


     def trek_params
          params.require(:trek).permit(:title, :description, :image)
     end

end
