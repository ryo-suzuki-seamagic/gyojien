class RecipeController < ApplicationController


  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.valid?
      binding.pry
      @recipe.save
      redirect_to root_path
    else
      render :new, notice: '投稿できません'
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :fishname, :text, :image).merge(user_id: current_user.id)
  end

end
