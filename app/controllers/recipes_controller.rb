class RecipesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
  end

  def show
  end

  private
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
