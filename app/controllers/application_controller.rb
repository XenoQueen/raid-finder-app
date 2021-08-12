class ApplicationController < ActionController::Base
    before_action :current_player
    def home
    end

    def current_player
        if session[:current_player_id]
            @current_player = Player.find(session[current_player_id])
        end
    end

    def login(player)
        session[:current_player_id] = @player.id
    end
end