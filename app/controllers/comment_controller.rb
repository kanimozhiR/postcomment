class CommentController < ApplicationController
  before_action :authenticate_user!

	def index
		@comment = Comment.all
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
	end
private
    # Using a private method to encapsulate the permissible parameters is
    # a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def comment_params
      params.require(:comment).permit(:newcomment)
    end
end

