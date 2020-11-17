class PostsController < ApplicationController

  def index
    @fishcatches = Fishcatch.all.order('created_at DESC')

  end
  
  def show
    
  end
  

  private

  

end
