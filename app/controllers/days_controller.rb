class DaysController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  def create
    all_days = current_user.days
    last_day = DateTime.parse(all_days.last.created_at.to_s)

    missing_days = (DateTime.now - last_day).to_i
    missing_days.times do |i|
      Day.create!(user_id: current_user.id, created_at: Date.today - missing_days + i + 1, day_date: (Date.today - missing_days + i + 1).strftime("%A %e %B %Y"))
    end

    respond_to do |format|
      format.text { render plain: current_user.days.last.id.to_s }
    end
  end

  def index
    @days = current_user.days.order(created_at: :desc)
    if params[:query].present?
      @days = Day.global_search(params[:query])
    else
      @days = current_user.days.order(created_at: :desc)
    end
  end

  def show
    @categories = Category.all
    @day = Day.find(params[:id])
    @task = Task.new
    @tasks = @day.tasks
    @category = Category.new
  end

  def update
    @day = Day.find(params[:id])
    @day.update(day_params)
  end

  private

  def day_params
    params.require(:day).permit(:highlight, :name)
  end
end
