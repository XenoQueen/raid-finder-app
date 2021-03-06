class Raid < ApplicationRecord
belongs_to :leader_player, :class_name => "Player"
belongs_to :member_player, :class_name => "Player", :optional => true
validates :raidname, :length => {:in => 5..50}
validates :playerclass, :length => {:in => 4..12}
validates :itemlevel, :presence => true
validate :different_player

    def self.by_status(status)
        case status
        when :open
            where(:member_player => nil)
        when :accepted
            where.not(:member_player => nil)
        end
    end

    def different_player
        if self.member_player == self.leader_player
            self.errors.add(:member_player)
        end
    end

    def accepted_by(player)
        self.update(:member_player => player)
    end

    def accepted?
        true if member_player
    end
end