class RecipesController < ApplicationController
  before_action :authenticate_user!


  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @user = User.find(@recipe.user_id)
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @recipe}
    end
  end

  def new
    @recipe = Recipe.new
    @ingredient = @recipe.ingredients.build
    @category = @recipe.categories.build
    @recipe.user_id = current_user.id
  end

  def create
    @recipe = Recipe.create(recipe_params)
    @recipe.user_id = current_user.id
    ingredient = Ingredient.create(params[:ingredients])
    @recipe.ingredients << ingredient unless ingredient.title.nil? || ingredient.title = ""
    redirect_to @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    authorize @recipe
    @recipe.destroy
    redirect_to root_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :user_id, ingredient_ids:[], ingredients_attributes:[:title])
  end
end
