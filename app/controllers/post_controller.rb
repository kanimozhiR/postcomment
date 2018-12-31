class PostController < ApplicationController
  before_action :authenticate_user!
	def index
		@post = Post.all

	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
	end
       
private
    # Using a private method to encapsulate the permissible parameters is
    # a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def post_params
      params.require(:post).permit(:newpost)
    end


end
