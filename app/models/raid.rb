class Raid < ApplicationRecord
belongs_to :leader_player, :class_name => "Player"
belongs_to :member_player, :class_name => "Player", :optional => true

    def accepted_by(player)
        self.update(:member_player => current_player)
    end
end