Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:index, :show, :create]
  resources :meet_ups do
  	resources :comments
  end
  resources :user_meet_ups

  post 'meet_ups/:id', to: 'comments#create'
  
  resources :comments

  resources :sessions, only: [:create]

  post 'sessions', to: 'sessions#create'

  delete 'sessions', to: 'sessions#destroy'

  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
