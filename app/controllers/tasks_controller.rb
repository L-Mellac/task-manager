class TasksController < ApplicationController
  def create
    @task = Task.new(task_params)
    day = Day.find(params[:day_id])
    @task.day = day
    @task.save!

    respond_to do |format|
      format.html { redirect_to day_path(day) }
      format.text { render partial: 'days/task', locals: { task: @task, categories: Category.all, day: day }, formats: :html}
    end
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to day_path(@task.day)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to day_path(@task.day)
  end

  private

  def task_params
    params.require(:task).permit(:description, :priority, :category_id, :completed)
  end
end
