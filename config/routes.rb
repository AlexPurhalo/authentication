Rails.application.routes.draw do
  root 'posts#index'

  resources :posts, only: [:show, :index, :create, :destroy, :new]

  get 'signup' => 'users#new'

  resources :users
end
