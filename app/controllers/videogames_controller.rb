class VideogamesController < ApplicationController
  def index
    @videogames = Videogame.all
  end

  def show
    @videogame = Videogame.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy


    @videogame = Videogame.find(params[:id])
    @videogame.destroy




  end
end
