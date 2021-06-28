class MoviesController < ApplicationController
  def show
    movie = Movie.find_by(id: 2)
    render json: movie.as_json
  end
end
