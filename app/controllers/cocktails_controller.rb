class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktails = Cocktail.new
  end

  def create
    # @cocktail = Cocktail.new(cocktail_params)
    # @cocktail.save
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  private

end
