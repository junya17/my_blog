class CommentsController < ApplicationController
	def create
		@comment = Comment.new(comment_params)
		@comment.save
		redirect_back(fallback_location: root_path)
	end

	private

	def comment_params
		params.require(:comment).permit(:name, :comment, :post_id)
	end
end