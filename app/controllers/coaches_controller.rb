class CoachesController < ApplicationController
  before_action :set_coach, only: %i[show edit update destroy]
  def index
    @coaches = Coach.all
    @markers = @coaches.geocoded.map do |coach|
      {
        lat: coach.latitude,
        lng: coach.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {coach: coach}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @coaches = Coach.all
    @markers = @coaches.geocoded.map do |coach|
      {
        lat: coach.latitude,
        lng: coach.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {coach: coach})
      }
    end
  end

  def new
    @coach = Coach.new
  end

  def create
    coach = Coach.create(coach_params)
    coach.user = current_user

    if coach.save
      redirect_to coach_path(coach)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @coach.update(coach_params)
      redirect_to coach_path(@coach)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @coach.delete
    redirect_to coaches_path, status: :see_other
  end

  private

  def set_coach
    @coach = Coach.find(params[:id])
  end

  def coach_params
    params.require(:coach).permit(:name, :details, :address, :photo)
  end

end
