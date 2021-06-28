class MoviesController < ApplicationController
  
  require 'http'

  response = HTTP.get('https://github.com/carlosraguirre/movie-app')

  def index
    movies = Movie.all
    render json: movies.as_json
  end
  
  def show
    movie = Movie.find_by(id: params[:id])
    render json: product
  end
end
