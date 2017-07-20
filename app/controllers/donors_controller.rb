class DonorsController < ApplicationController
  def new
  end
  def create
    donor = Donor.new(donor_params)
  if donor.save
    session[:donor_id] = donor.id
    redirect_to '/'
  else
    redirect_to '/signup'
    end
  end
  private
  def donor_params
    params.require(:donor).permit(:first_name,:last_name, :email, :password, :password_confirmation, :zipcode, :phone, :bloodtype)
  end
end
