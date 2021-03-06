class UsersController < ApplicationController

  def show
    @dogs = current_user.dogs
    @recipes = current_user.recipes.order("created_at DESC")
  end

  def edit
    @user = current_user
    @user.dogs.build
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :age, :area, :introduction, :sex, :image)
  end
end
