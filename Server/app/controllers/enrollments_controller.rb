class EnrollmentsController < ApplicationController
  before_action :authenticate_user!
  
  def create
     current_user.enrollments.create(:trek => current_trek)
     redirect_to trek_path(current_trek)
  end

  private

  def current_trek
    @current_trek ||= Trek.find(params[:trek_id])
  end


end
