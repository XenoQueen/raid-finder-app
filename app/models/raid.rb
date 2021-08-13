class Raid < ApplicationRecord
belongs_to :leader_player, :class_name => "Player"
belongs_to :member_player, :class_name => "Player", :optional => true
validates :raidname, :length => {:in => 5..50}
validates :playerclass, :length => {:in => 4..12}
validates :itemlevel, :presence => true


    def self.by_status(status)
        case status
        when :open
            where(:member_player => nil)
        when :accepted
            where.not(:member_player => nil)
        end
    end

    def accepted_by(player)
        if player == self.leader_player
            self.errors.add(:member_player)
            return false   
        else
            self.update(:member_player => current_player)
        end
    end

    def accepted?
        true if member_player
    end
end