class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  def new
  end

  def create
  end

  def index
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
end
