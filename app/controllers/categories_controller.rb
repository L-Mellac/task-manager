class CategoriesController < ApplicationController
  def create
    @category = Category.new( name: category_params[:name] )
    @category.user = current_user
    unless @category.save!
      flash[:alert] = "Error creating category"
    end

    respond_to do |format|
      format.text { render partial: 'days/category', locals: { category: @category, task_id: params[:task_id] }, formats: :html}
    end
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
  end

  def delete
    @category = Category.find(params[:id])
    @category.destroy
  end

  private

  def category_params
    params.require(:category).permit(:name, :day, :color)
  end
end
