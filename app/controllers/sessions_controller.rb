class SessionsController < ApplicationController
  def new
  end

  def create
    user = Donor.find_by_email(params[:email]) ||
    HealthProvider.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id]= user.id
      redirect_to '/'
    else
      render :new
    end
  end
  def destroy
    session[:user_id]=nil
    session[:health_provider_id]=nil
    redirect_to '/login'
  end
end
