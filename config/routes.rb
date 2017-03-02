Rails.application.routes.draw do
  devise_for :users,
   controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  resources :lists do
    resources :movies, only: [:new, :create]
  end

  resources :movies_lists
  resources :movies, only: [:show, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
