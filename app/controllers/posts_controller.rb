class PostsController < ApplicationController

  def index
    @fishcatches = Fishcatch.all.order('created_at DESC')
    @recipes = Recipe.all.order('created_at DESC')
    @colimns = Colimn.all.order('created_at DESC')

  end
  
  def show
    
  end
  

  private

  

end
