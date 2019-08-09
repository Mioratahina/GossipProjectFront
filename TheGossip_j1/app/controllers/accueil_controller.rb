class AccueilController < ApplicationController
  def accueil
  	@user = User.all
  	@gossips = Gossip.all
  end
  def home
  	@gossip = Gossip.find(params["id"])
  end
  def potin
  	@goss = Gossip.find(params[:i])
  end
  def profil
  	@user = User.find(params[:i])
  end
end
