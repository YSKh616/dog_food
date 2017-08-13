class RawMaterialsController < ApplicationController

  def create
    @raw_material = Raw_material.new(material_params)
    @raw_material.save
  end

  private
  def material_params
    params.require(:raw_material).permit(:material, :quantity).merge(:recipe_id)
  end

end
