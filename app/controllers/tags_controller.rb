class TagsController < ApplicationController
	def posts
    	@tag = Tag.find(params[:id])
    	@posts = @tag.posts.order('id DESC')
  	end
end
