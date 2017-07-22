class DonorsController < ApplicationController


  def index
    @donor = Donor.all
  end

  def new
    @donor = Donor.new
  end

  def edit
    @donor = Donor.find(params[:id])
  end

  def create
    @donor = Donor.new(donor_params)
    if @donor.save
      session[:donor_id] = @donor.id
      redirect_to '/'
    else
      render :new
    end
  end


  private
  def donor_params
    params.require(:donor).permit(:first_name,:last_name, :email, :password, :password_confirmation, :zipcode, :phone, :bloodtype)
  end
end
