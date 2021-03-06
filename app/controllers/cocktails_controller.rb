class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_param)
    if @cocktail.save
      redirect_to @cocktail    
    else
      render :new    
    end
  end

  private

  def cocktail_param
    params.require(:cocktail).permit(:name)
  end
end
