class SessionsController < ApplicationController
  def new
  end

  def create
    donor = Donor.find_by_email(params[:email])
  if donor && donor.authenticate(params[:password])
    session[:donor_id]= donor.id
    redirect_to '/'
  else
    redirect_to '/login'
  end
end
  def destroy
    session[:donor_id]=nil
    redirect_to '/login'  
  end
end
