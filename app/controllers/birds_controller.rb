
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
    #here we are grabbing just the data we need by assigning the keys manually using attributes of bird
    #this allows us to ommit some data 
    render json: {id: bird.id, name: bird.name, species: bird.species }
    #this code also slices data - a bit more efficien than above code 
    render json: bird.slice(:id, :name, :species)
  end

end
