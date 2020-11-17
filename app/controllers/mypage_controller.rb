class MypageController < ApplicationController

  def index
    @user = User.all
    @fishcatches = Fishcatch.all.order('created_at DESC')
  end

  def create
  end


end
