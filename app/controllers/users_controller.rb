class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    @fishcatches = Fishcatch.all
  end

end   

