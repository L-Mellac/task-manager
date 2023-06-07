class CategoriesController < ApplicationController
  def create
    @category = Category.new( name: category_params[:name] )
    @category.user = current_user
    # @user = User.find(params[:user_id])
    # @category.user = @user
    @day = Day.find(params[:category][:day].to_i)
    if @category.save
      flash[:alert] = "Category Created!"
      redirect_to day_path(@day)
    else
      render "days/show", status: :unprocessable_entity
    end
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to #today
  end

  def delete
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to #today
  end

  private
  def category_params
    params.require(:category).permit(:name, :day)
  end
end
