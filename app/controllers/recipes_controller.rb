class RecipesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @recipes = Recipe.includes(:user).order("created_at DESC").page(params[:page]).per(9)
  end

  def new
    @recipe = Recipe.new
    @recipe.raw_materials.build
    @recipe.procedures.build
  end

  def search
    @recipes = Products.where('title LIKE(?)', "%#{params[:keyword]}%").limit(9)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      redirect_to :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @recipe.raw_materials.build
    @recipe.procedures.build
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to user_path
    else
      flash.now[:alert] = '未入力の項目があります'
      render :update
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.user_id == current_user.id
      @recipe.destroy
      redirect_to '/users/current_user.id'
    end
  end



  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def recipe_params
    params.require(:recipe).permit(:title, :image, :description, raw_materials_attributes: [:id, :material, :quantity], procedures_attributes: [:id, :image, :description]).merge(user_id: current_user.id)
  end
end
