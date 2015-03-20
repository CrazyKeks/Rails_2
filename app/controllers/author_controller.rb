class AuthorController < ApplicationController
	def index
		@authors = Author.paginate(:page => params[:page], :per_page => 10)
	end
	def show
    	@author = Author.find(params[:id])
  	end
  	def posts
    	@author = Author.find(params[:id])
    	@posts = @author.posts.order('created_at DESC')
 	 end
end
