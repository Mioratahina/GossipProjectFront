class CommentController < ApplicationController

	def index
		
	end

	def show
		
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(content: params[:content], gossip_id: Gossip.find(params[@comment.gossip.id]), user_id: User.find(params[@comment.user.id]))
		if @comment.save
			redirect_to "/gossips/#{@comment.gossip.id}"
		else
			render "new"
		end
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def update
		@comment = Comment.find(params[:id])
		if @comment.update(content: params[:content])
			redirect_to "/gossips/#{@comment.gossip.id}"
		else
			render "edit"
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy

		redirect_to gossip_path
	end

end
