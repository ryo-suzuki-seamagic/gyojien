class ColimnController < ApplicationController

  def new
    @colimn = Colimn.new
  end

  def create
    @colimn = Colimn.new(colimn_params)
    if @colimn.valid?
      binding.pry
      @colimn.save
      redirect_to root_path
    else
      render :new, notice: '投稿できません'
    end


  end

  def update
  end
  def destroy
  end

  private

  def colimn_params
    params.permit(:title,:blog, :content, :image).merge(user_id: current_user.id)
  end

end
