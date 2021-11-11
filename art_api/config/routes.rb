Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :users

  resources :users, only: [:index, :create, :new, :edit, :show, :update, :destroy]

end
