# frozen_string_literal: true

class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  #
  #
  #
  # test 123
  #
  #
  #
  def new
    @booking = Booking.new
  end

  def create
    booking = Booking.create(booking_params)
    redirect_to booking_path(booking)
  end

  def show
    @booking = Booking.find_by_id(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end
end
