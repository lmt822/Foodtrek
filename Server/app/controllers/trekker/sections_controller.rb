class Trekker::SectionsController < ApplicationController
     before_action :authenticate_user!
     before_action :require_authorized_for_current_trek

     def new
          @section = Section.new
     end

     def create
          @section = current_trek.sections.create(section_params)
          redirect_to trekker_trek_path(current_trek)
     end

     private
     def require_authorized_for_current_trek
          if current_trek.user != current_user
               render :text => "Unauthorized", :status => :unauthorized
          end
     end

     helper_method :current_trek
     def current_trek
          @current_trek ||= Trek.find(params[:trek_id])
     end

     def section_params
          params.require(:section).permit(:title)
     end
end
