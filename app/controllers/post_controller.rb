class PostController < ApplicationController
   def index
  	@posts = Post.paginate(:page => params[:page], :per_page => 10).order("created_at DESC")
  end

  def show
    @post = Post.find(find_params)
    @tags = @post.tags
  end
  private
    def find_params
      @post = Post.find(params[:id]) 
    end
end