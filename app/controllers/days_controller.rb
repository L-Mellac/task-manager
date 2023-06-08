class DaysController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  def create
    #see when the last day was created
    all_days = current_user.days
    last_day = DateTime.parse(all_days.last.created_at.to_s)

    #if the last day is not today
    # if last_day != Date.today
    #created all the days in between up till today

    missing_days = (DateTime.now - last_day).to_i

    puts "all days:"
    puts all_days

    puts "last day:"
    puts last_day

    puts "missing days:"
    puts missing_days

    missing_days.times do |i|
      # puts i
      Day.create!(user_id: current_user.id, created_at: Date.today - missing_days + i + 1)
    end
  end

  def index
    create
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
