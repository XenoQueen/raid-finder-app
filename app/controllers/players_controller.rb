class PlayersController < ApplicationController

    #GET /register - New Player Action
    def new
        render plain: "Hello World"
    end

    # POST /players - Create the Player Action
    def create
    end
end