class SessionsController < ApplicationController

    def new
    end

    def create
        @player = Player.find_by(:playername => params[:playername])
        if @player
            session[:current_player_id] = @player.id
            redirect_to "/"
        else
            redirect_to "/login", :notice => "Could not find player, please try again."
        end
    end

    def destroy
        reset_session

        redirect_to "/"
    end
end