class GossipsController < ApplicationController

	def accueil

	end

	def index
		@gossip = Gossip.all
	end

	def show
		@gossip = Gossip.find(params[:id])
	end

	def new
		@gossip = Gossip.new
	end

	def create
		@gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 11)
		if @gossip.save
			redirect_to gossips_path
		else
			render "new"
		end
	end

	def edit
		@gossip = Gossip.find(params[:id])
	end

	def update
		@gossip = Gossip.find(params[:id])
		if @gossip.update(title: params[:title], content: params[:content])
			redirect_to "/gossips/#{@gossip.id}"
		else
		    render "edit"
		end
	end

	def destroy
		@gossip = Gossip.find(params[:id])
		r = Relation.where(gossip_id: @gossip.id)
		r.destroy_all
		@gossip.destroy

		redirect_to gossips_path
	end

end
