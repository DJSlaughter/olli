Rails.application.routes.draw do
  devise_for :users,
   controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'

  resources :lists do

    resources :movies, only: [:new, :create]
    get '/search', to: 'movies#search'
    get '/search_results', to: 'movies#search_results'


    get '/add_movie', to: 'movie_lists#add_movie'
    delete '/remove_movie', to: 'movie_lists#remove_movie'

  end


    get '/search', to: 'application#search'
    get '/search_results', to: 'application#search_results'

  resources :movies, only: [:show, :index, :new, :create]


  get '/dashboard', to: 'pages#dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
