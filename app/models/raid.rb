class Raid < ApplicationRecord
belongs_to :leader_player, :class_name => "Player"
belongs_to :member_player, :class_name => "Player", :optional => true


end