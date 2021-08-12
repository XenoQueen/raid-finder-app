class RaidsController < ApplicationController
    before_action :authentication_required

    def new
    end

    def index
        @raids = Raid.all
    end

    def show
        @raid = Pair.find(params[:id])
    end

    def create
        @raid = Raid.new
        @raid.raid_name = params["Raid Name"]
        @raid.player_class = params["Player Class"]
        @raid.item_level = params["Item Level"]
        @raid.leader_player_id = current_player.id
            if @raid.save
                redirect_to "/raids"
            else

            end
        end
    end

    private

    def raid_params
    end
end