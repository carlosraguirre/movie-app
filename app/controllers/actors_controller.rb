class ActorsController < ApplicationController

  def index
    actors = Actor.all
    render json: actors
  end
  
  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor
  end

  def update
    the_id = params[:id]
    actor = Actor.find_by(id: the_id)

    actor.first_name = params[:first_name]
    actor.last_name = params[:last_name]
    actor.known_for = params[:known_for]
    actor.gender = params[:gender]
    actor.age = params[:age]
    actor.movie_id = params[:movie_id]

    if actor.save
      render json: actor
    else
      render json: {error: actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def create
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:year],
      gender: params[:gender],
      age: params[:age],
      movie_id: params[:movie_id]
    )

    if actor.save
      render json: actor
    else
      render json: {error: actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    the_id = params[:id]
    actor = Actor.find_by(id: the_id)

    actor.destroy
    render json: actor
  end

end