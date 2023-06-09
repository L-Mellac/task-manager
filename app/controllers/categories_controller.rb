class CategoriesController < ApplicationController
  def create
    @category = Category.new( name: category_params[:name] )
    @category.user = current_user
    # @user = User.find(params[:user_id])
    # @category.user = @user
    day = Day.find(params[:day].to_i)
    if @category.save
      flash[:alert] = "Category Created!"
      redirect_to day_path(day)
    else
      render "days/#{day.id}", status: :unprocessable_entity
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
    params.require(:category).permit(:name, :day)
  end
end
