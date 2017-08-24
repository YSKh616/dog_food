class UsersController < ApplicationController
  def edit
    @user = current_user
    @user.dogs.build
  end
end
