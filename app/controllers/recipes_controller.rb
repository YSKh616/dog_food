class RecipesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @recipes = Recipe.includes(:user).order("created_at ASC").page(params[:page]).per(9)
  end

  def new
    @recipe = Recipe.new
    @recipe.raw_materials.build
    @recipe.procedures.build
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to root_path
  end

  def show
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  def recipe_params
    params.require(:recipe).permit(:title, :image, :description, raw_materials_attributes: [:id, :material, :quantity], procedures_attributes: [:id, :image, :description]).merge(user_id: current_user.id)
  end
end
