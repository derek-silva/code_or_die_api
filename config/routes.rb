Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create]
  resources :meetups, only: [:index, :show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
