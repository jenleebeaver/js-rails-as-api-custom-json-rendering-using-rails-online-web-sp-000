
class BirdsController < ApplicationController
  #can see the method actions in routes

  def index
    birds = Bird.all
    render json: birds
  end

  def show
    bird = Bird.find_by(id: params[:id])
    render json: bird
     render json: {id: bird.id, name: bird.name, species: bird.species } 
  end

end
