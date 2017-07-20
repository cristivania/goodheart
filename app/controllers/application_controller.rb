class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authorize

  def current_donor
    @current_donor ||= Donor.find(session[:donor_id])if session[:donor_id]
  end
  helper_method :current_donor

  def authorize
    redirect_to'/login' unless current_donor
  end
end
