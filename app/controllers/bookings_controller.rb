# frozen_string_literal: true

class BookingsController < ApplicationController
  def index
    if params[:property_id]
      @property = Property.find_by_id(params[:property_id])
      @bookings = @property.bookings
    else
      @bookings = Booking.all
    end
  end

  def new
    @property = Property.find_by_id(params[:property_id]) if params[:property_id]
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.create(booking_params)
    redirect_to booking_path(@booking)
  end

  def show
    @booking = Booking.find_by_id(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :number_of_guests, :property_id, property_attributes: %i[address city state max_occupancy])
  end
end
