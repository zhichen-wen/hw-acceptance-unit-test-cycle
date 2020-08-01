class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.find_similar_movies movie_id
    movie = Movie.where(id: movie_id).first
    director = movie.director
    if director == ""
      return nil
    end
    movies = Movie.where(director: director)
    return movies
  end
end
