Rails.application.routes.draw do

  # get '/songs', to: 'songs#index'
  # get '/songs/:id', to: 'songs#show'
  resources :songs, only: [:index, :show, :new, :create]

  # get '/artists/:artist_id/songs', to: 'artist_songs#index'
  # get '/artists', to: 'artists#index'
  # get '/artists/new', to: 'artists#new'
  # get '/artists/:id', to: 'artists#show'
  # post '/artists', to: 'artists#create'
  # get '/artists/:id/edit', to: 'artists#edit'
  # patch '/artists/:id', to: 'artists#update'
  # delete '/artists/:id', to: 'artists#destroy'
  resources :artists do
    resources :songs, only: [:index]
  end

  # get '/playlists', to: "playlists#index", as: "playlists"
  resources :playlists, only: [:index]

end
