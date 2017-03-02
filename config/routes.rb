Rails.application.routes.draw do
  devise_for :users,
   controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  resources :lists do
    resources :movies_lists
  end

  resources :movies

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
