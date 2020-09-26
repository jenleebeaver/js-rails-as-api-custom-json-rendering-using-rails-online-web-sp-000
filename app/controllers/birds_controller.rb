
class BirdsController < ApplicationController
  #can see the views in routes 

  def index
    birds = Bird.all
    render json: birds
  end

  def show
    bird = Bird.find_by(id: params[:id])
    render json: bird
  end

end
