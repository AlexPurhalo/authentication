Rails.application.routes.draw do
  root 'posts#index'

  resources :posts, only: [:show, :index, :create, :destroy, :new]

  get 'signup' => 'users#new'

  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
