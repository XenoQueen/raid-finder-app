class ApplicationController < ActionController::Base
include ApplicationHelper::SessionsHelper

    before_action :current_player
    
    def home
    end
end