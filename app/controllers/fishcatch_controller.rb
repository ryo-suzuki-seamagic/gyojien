class FishcatchController < ApplicationController

  def new
    @fishcatch = Fishcatch.new
  end

  def create
    @fishcatch = Fishcatch.new(fishcatch_params)
    if @fishcatch.valid?
      @fishcatch.save
      redirect_to root_path
    else
      render :new, notice: '投稿できません'
    end
  end

  def edit
  end

  def update
  end

  def show
  end


  private

  def fishcatch_params

    params.require(:fishcatch).permit(:title, :location_id, :field_id, :fish_name, :fishingmethod, :text ,:image).merge(user_id: current_user.id)
  end
end
