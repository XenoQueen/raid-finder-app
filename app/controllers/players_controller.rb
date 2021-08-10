class PlayersController < ApplicationController

    #GET /register - New Player Action
    def new
        if session[:current_player_id]
            redirect_to "/", :notice => "This player is already logged in."
        end
    end

    # POST /players - Create the Player Action
    def create
        @player = Player.new
        @player.playername = params[:playername]
        @player.save

        redirect_to "/login"
    end
end