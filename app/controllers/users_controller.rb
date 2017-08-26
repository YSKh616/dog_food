class UsersController < ApplicationController

  def show
  end

  def edit
    @user = current_user
    @user.dogs.build
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :age, :area, dog_attributes: [:id, :name,:type,:age])
  end
end
