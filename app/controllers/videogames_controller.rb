class VideogamesController < ApplicationController
  require "open-uri"
  require 'json'
  def index
    @videogames = Videogame.all
  end

  def show
    # @videogame = Videogame.find(params[:id])
  end

  def new
    @videogame = Videogame.new
  end

  def create
    @videogame = Videogame.new

  end

  def search
    videogame = params[:videogame][:title]
    response = open("https://api-endpoint.igdb.com/games/?search=#{videogame}",
    {
      "user-Key" => '241a39d7cb359e03ef5c0546f2798b09',
      "Accept" => "application/json"
    }).read

    newgame = JSON.parse(response)

    videogame_result = open("https://api-endpoint.igdb.com/games/#{newgame.first["id"]}",
              {
      "user-Key" => '241a39d7cb359e03ef5c0546f2798b09',
      "Accept" => "application/json"
    }).read

    @result  = JSON.parse(videogame_result)
        render :result






  end





  def destroy
    @videogame = Videogame.find(params[:id])
    @videogame.destroy
  end
end
