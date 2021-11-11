Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users

  resources :users, only: [:index, :create, :show, :update, :destroy]

  resources :artworks, only: [:index, :create, :show, :update, :destroy]

  resources :artwork_shares, only: [:index, :create, :destroy]

end
