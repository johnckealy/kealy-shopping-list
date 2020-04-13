class ShoppingTripsController < ApplicationController

  def index
    @shopping_trips = ShoppingTrip.all
  end

  def new
    @shopping_trip = ShoppingTrip.new
  end

  def create
    @shopping_trip = ShoppingTrip.new(shopping_trip_params)
    if @shopping_trip.save
      redirect_to root_path
    else
      raise
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def shopping_trip_params
    params.require(:shopping_trip).permit(:date)
  end
end
