class IngredientsController < ApplicationController

def new
end

def create
  @ingredient = Ingredient.create(params[:title]) if(params[:title] != "" || params[:title].nil?)
end

end
