class DaysController < ApplicationController
  def create

  end

  def index
    @days = current_user.days
  end

  def show
    @day = Day.find(params[:id])
    @task = Task.new
    @tasks = @day.tasks
    @category = Category.new
  end

  def update
    @day = Day.find(params[:id])
    @day.update(day_params)
    redirect_to day_path(@day)
  end

  private
  def day_params
    params.require(:day).permit(:highlight, :name)
  end
end
