class RaidsController < ApplicationController
    before_action :authentication_required

    def new
    end

    def index
        @raids = Raid.by_status(:open)
    end

    def show
        @raid = Pair.find(params[:id])
    end

    def update
        @raid = Raid.find(params[:id])
        if @raid.accepted_by(current_player)
            redirect_to @raid
        else
            render :show
        end
    end

    def create
        @raid = Raid.new
        @raid.raid_name = params["raidname"]
        @raid.player_class = params["playerclass"]
        @raid.item_level = params["itemlevel"]
        @raid.leader_player_id = current_player.id
            
        if @raid.save
            redirect_to "/raids"
        else
            render :new
        end
    end

    private

    def raid_params
    end
end