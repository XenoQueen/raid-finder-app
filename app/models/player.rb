class Player < ApplicationRecord
    has_many :raid_requests, :class_name "Raid", :foreign_key => "leader_player_id"
    has_many :raid_responses, :class_name "Raid", :foreign_key => "member_player_id"
end