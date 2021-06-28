class ActorsController < ApplicationController

  def index
    actors = Actor.all
    render json: actors.as_json
  end
  
  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor.as_json
  end

  def update
    the_id = params[:id]
    actor = Actor.find_by(id: the_id)

    actor.first_name = params[:first_name]
    actor.last_name = params[:last_name]
    actor.known_for = params[:known_for]

    actor.save
    render json: actor.as_json
  end

  def create
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:year]
    )

    actor.save
    render json: actor.as_json
  end

  def destroy
    the_id = params[:id]
    actor = Actor.find_by(id: the_id)

    actor.destroy
    render json: actor.as_json
  end

end
