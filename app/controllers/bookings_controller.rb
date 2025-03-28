class BookingsController < ApplicationController
  before_action :authorize_booking, only: [:create]

  def index
    bookings = @current_user.bookings
    render json: bookings
  end

  def create
    booking = @current_user.bookings.build(booking_params)
    if booking.save
      render json: booking, status: :created
    else
      render json: { errors: booking.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.permit(:event_id, :ticket_id, :quantity)
  end

  def authorize_booking
    authorize Booking
  end
end
