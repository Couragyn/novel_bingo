Rails.application.routes.draw do
  resources :squares
  resources :cards
  resources :bingos
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'index#show'
end
