class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new()
    @dose.cocktail = @cocktail
    description = params[:dose][:description]
    ingredient_id = params[:dose][:ingredient]
    @ingredient = Ingredient.find(ingredient_id)
    @dose.ingredient = @ingredient
    @dose.description = description
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def delete
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end
end
