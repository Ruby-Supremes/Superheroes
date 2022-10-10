Rails.application.routes.draw do
  resources :powers, only: [:update, :index, :show]
  resources :hero_powers
  resources :heros, only: [:index, :show]

end
