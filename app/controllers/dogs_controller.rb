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

  def edit
    @dog = Dog.find(params[:id])
  end

  def destroy
    @dog = Dog.find(params[:id])
    if @dog.user_id == current_user.id
      @dog.destroy
      redirect_to '/users/current_user.id'
    end
  end

  def update
    @dog = Dog.find(params[:id])
    if @dog.user_id == current_user.id
      @dog.update(dog_params)
      redirect_to '/users/current_user.id'
    else
      flash.now[:alert] = '未入力の項目があります'
      render :edit
    end
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :age, :type, :image, :sex, :allergy, :medicalhistory).merge(user_id: current_user.id)
  end
end
