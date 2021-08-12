class CreateRaids < ActiveRecord::Migration[6.1]
  def change
    create_table :raids do |t|
      t.string :raid_name
      t.string :player_class
      t.integer :item_level
      t.integer :leader_player_id
      t.integer :member_player_id

      t.timestamps
    end
  end
end
