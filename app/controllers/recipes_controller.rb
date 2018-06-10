class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.includes(:baking).find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @recipe.build_baking
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save

    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render 'new'
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)

    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to root_path
  end

  private
  def recipe_params
      params.require(:recipe).permit(:recipe_name, :recipe_notes,
                                                          ingredients_attributes: [:id, :ingredient_name, :quantity, :measuring, :other, :optional, :_destroy],
                                                          steps_attributes: [:id, :step_description, :step_notes, :_destroy],
                                                          baking_attributes: [:id, :no_baking, :baking_type, :heat, :unit, :duration, :baking_notes, :_destroy])
    end
end
