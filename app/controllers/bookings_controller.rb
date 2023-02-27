class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  def new
    @booking = Booking.new
    @coach = Coach.find(params[:coach_id])
  end

  def create
    @booking = Booking.create(booking_params)
    @coach = Coach.find(params[:coach_id])
    @booking.user = current_user
    @booking.coach = @coach
    if @booking.save
      redirect_to coach_path(@coach)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :location, :coach_id)
  end
end
