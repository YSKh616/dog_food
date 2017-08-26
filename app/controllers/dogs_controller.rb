class DogsController < ApplicationController
  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to '/users/current_user.id'
    else
      flash.now[:alert] = '未入力の項目があります'
      render :new
    end
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :age, :type, :image, :sex, :allergy, :medicalhistory).merge(user_id: current_user.id)
  end
end
