Rails.application.routes.draw do
  get '/', to: 'accueil#accueil'
  get '/:i/potin', to: 'accueil#potin'
  get '/:i/potin/profil', to: 'accueil#profil'
  # get '/home', to: 'accueil#home'
  get '/home/:id', to: "accueil#home"
  get '/contact', to: 'contact#contact'
  get '/team', to: 'team#team'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
