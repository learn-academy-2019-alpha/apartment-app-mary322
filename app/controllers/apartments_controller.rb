class ApartmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    apartments = Apartment.all
        render json: apartments
  end

  def create
   apartment = Apartment.create(apartment_params)
   if Apartment.valid?
     render json: apartment
    else
      render json: apartment.errors, status: :unprocessable_entity
    end
 end

end
