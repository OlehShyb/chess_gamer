Rails.application.routes.draw do
  get 'home/index'
  resources :gamers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  get "puzzle", to: "home#puzzle"
  root 'gamers#index'
end
