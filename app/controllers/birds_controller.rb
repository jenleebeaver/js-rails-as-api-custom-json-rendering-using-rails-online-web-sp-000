
class BirdsController < ApplicationController
  #can see the method actions in routes

  def index
    birds = Bird.all
    render json: birds
  end

  def show
    bird = Bird.find_by(id: params[:id])
    #shows all of our collection
    #render json: bird
    #here we are grabbing just the data we need
    render json: {id: bird.id, name: bird.name, species: bird.species }
  end

end
