class PostsController < ApplicationController
	def show
		@post = Post.find(params[:id])

	end
	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(params[:post])
			redirect_to root_url, :notice => "Successful update"
		else
			render "edit"
		end
	end
	def edit
		@post = Post.find(params[:id])
	end
	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to root_url, :notice => "Successful delete"
	end
	def new
		@post = Post.new
	end
	def index
	end
	def create
		@post = Post.new(params[:post])
		if @post.save
			redirect_to root_url, :notice => "Successful"
		else
			render "new"
		end
	end
end
