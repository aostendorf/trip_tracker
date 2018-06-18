class Api::AddressesController < ApplicationController
  before_action :set_address, only [:show, :update, :destroy]
  before_action :set_location

  def index
    render json: Address.all
  end

  def show
    render json: @address
  end

  def create
    trip = Address.new(address_params)

    if Address.save
      render json: address
    else
      render json: address.errors, status: 417
    end
  end

  def update
    if @address.update(address_params)
      render json: @address
    else
      render json: @address.errors, status: 417
    end
  end

  def destroy
    @address.destroy
  end

private
  def set_trip
    @address = Address.find(params[:id])
  end

  def set_location
    @location = Location.find(params[:id])
  end

  def address_params
    params.require(:address).permit(:street_address, :city, :state, :zip)
  end
end

end

