class MypageController < ApplicationController

  def show
    @user = User.find(params[:id])
    @fishcatches = Fishcatch.all.order('created_at DESC')
  end

  def create
  end


end
