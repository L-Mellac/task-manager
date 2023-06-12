class DaysController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  def create
    all_days = current_user.days
    last_day = DateTime.parse(all_days.last.created_at.to_s)

    missing_days = (DateTime.now - last_day).to_i
    missing_days.times do |i|
      Day.create!(user_id: current_user.id, created_at: Date.today - missing_days + i + 1)
    end
  end

  def index
    create
    @days = current_user.days.order(created_at: :desc)
    # @categories = Category.find(params[:id])
    if params[:query].present?
      @days = Day.global_search(params[:query])
    else
      @days = current_user.days.order(created_at: :desc)
    end


    # if params[:query].present?
    #   sql_query = "highlight ILIKE :query OR name ILIKE :query"
    #   @days = Day.where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @days = Day.all
    # end


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
    redirect_to day_path(@day)
  end

  private
  def day_params
    params.require(:day).permit(:highlight, :name)
  end
end
