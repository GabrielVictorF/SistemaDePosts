class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show 
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if @post.update(params_post)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def create
		@post = Post.new(params_post)

		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path
	end

	private
		def params_post
			params.require(:post).permit(:conteudo, :text)
		end
end
