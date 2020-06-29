Rails.application.routes.draw do
  resources :movie_albums
  root to: 'movie_albums#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
