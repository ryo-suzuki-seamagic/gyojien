class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    @fishcatche = Fishcatch.all
    @recipe = Recipe.all
  end

end   

