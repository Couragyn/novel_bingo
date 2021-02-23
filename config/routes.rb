Rails.application.routes.draw do
  resources :squares
  resources :cards
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'index#show'

  resources :bingos do 
    member do
      post 'add_card_to_my_bingo'
    end
  end
  
end
