class CoachesController < ApplicationController
  def index
    @coaches = Coach.all
  end

  def show
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
      render :new, status: unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def coach_params
    params.require(:coach).permit(:name, :details, :photo)
  end

end
