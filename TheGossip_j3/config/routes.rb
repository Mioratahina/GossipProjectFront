Rails.application.routes.draw do
	get '/', to: "gossips#accueil"
	resources :user
	resources :city
	resources :comment
	resources :gossips
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
