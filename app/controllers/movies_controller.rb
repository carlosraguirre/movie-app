class MoviesController < ApplicationController
  
  require 'http'

  response = HTTP.get('https://github.com/carlosraguirre/movie-app')

  def index
    movies = Movie.all
    render json: movies.as_json
  end
  
  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie
  end

  def update
    the_id = params[:id]
    movie = Movie.find_by(id: the_id)

    movie.title = params[:title]
    movie.year = params[:year]
    movie.plot = params[:plot]
    movie.director = params[:director]
    movie.english = params[:english]

    if movie.save
      render json: movie.as_json
    else
      render json: {error: movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: ( params[:english] = true )
    )

    if movie.save
      render json: movie.as_json
    else
      render json: {error: movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    the_id = params[:id]
    movie = Movie.find_by(id: the_id)

    movie.destroy
    render json: movie.as_json
  end


end