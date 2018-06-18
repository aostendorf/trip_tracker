class Api::LocationsController < ApplicationController
  before_action :set_location, only [:show, :update, :destroy]
  before_action :set_trip

  def index
    render json: Location.all
  end

  def show
    render json: @location
  end

  def create
    trip = Location.new(location_params)

    if Location.save
      render json: location
    else
      render json: location.errors, status: 417
    end
  end

  def update
    if @location.update(location_params)
      render json: @location
    else
      render json: @location.errors, status: 417
    end
  end

  def destroy
    @location.destroy
  end

private
  def set_location
    @location = Location.find(params[:id])
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name)
  end




end
