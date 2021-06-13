Rails.application.routes.draw do
  get '/pokemons/random', to: 'pokemons#random'
  resources :pokemons, only: [:index, :show]
end
