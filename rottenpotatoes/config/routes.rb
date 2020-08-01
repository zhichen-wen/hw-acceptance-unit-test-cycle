Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  get '/movies/similar/:id', to: 'movies#similar_movies', as: :find_similar_movies
  root :to => redirect('/movies')
end
