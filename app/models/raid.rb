class Raid < ApplicationRecord
belongs_to :leader_player, :class_name => "Player"
belongs_to :member_player, :class_name => "Player", :optional => true
scope :by_status, -> (status) {where("created_at < ?", time)}

    def self.by_status(status)
        case status
        when :open
            where(:member_player => nil)
        when :accepted
            where.not(:member_player => nil)
        end
    end

    def accepted_by(player)
        self.update(:member_player => current_player)
    end

    def accepted?
        true if member_player
    end
end