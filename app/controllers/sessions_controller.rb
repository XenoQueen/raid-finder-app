class SessionsController < ApplicationController

    def new
    end

    def create
        @player = Player.find_by(:playername => params[:playername])
        if @player
            raise "login".inspect
        else
            redirect_to "login", :message => "Could not find player, please try again."
        end
    end
end