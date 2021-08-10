class PlayersController < ApplicationController

    #GET /register - New Player Action
    def new
        
    end

    # POST /players - Create the Player Action
    def create
        @player = Player.new
        @player.playername = params[:playername]
        @player.save

        redirect_to "/login"
    end
end