class WarbandMembers < ActiveRecord::Migration
  def change
  	add_column :frost_grave_participants, :soldier_1_name, :string
  	add_column :frost_grave_participants, :soldier_1_type, :string
  	add_column :frost_grave_participants, :soldier_1_item, :string

  	add_column :frost_grave_participants, :soldier_2_name, :string
  	add_column :frost_grave_participants, :soldier_2_type, :string
    add_column :frost_grave_participants, :soldier_2_item, :string
  	
  	add_column :frost_grave_participants, :soldier_3_name, :string
  	add_column :frost_grave_participants, :soldier_3_type, :string
    add_column :frost_grave_participants, :soldier_3_item, :string

  	add_column :frost_grave_participants, :soldier_4_name, :string
  	add_column :frost_grave_participants, :soldier_4_type, :string
    add_column :frost_grave_participants, :soldier_4_item, :string

  	add_column :frost_grave_participants, :soldier_5_name, :string
  	add_column :frost_grave_participants, :soldier_5_type, :string
    add_column :frost_grave_participants, :soldier_5_item, :string

  	add_column :frost_grave_participants, :soldier_6_name, :string
  	add_column :frost_grave_participants, :soldier_6_type, :string
    add_column :frost_grave_participants, :soldier_6_item, :string

  	add_column :frost_grave_participants, :soldier_7_name, :string
  	add_column :frost_grave_participants, :soldier_7_type, :string
    add_column :frost_grave_participants, :soldier_7_item, :string

  	add_column :frost_grave_participants, :soldier_8_name, :string
  	add_column :frost_grave_participants, :soldier_8_type, :string
    add_column :frost_grave_participants, :soldier_8_item, :string

  	add_column :frost_grave_participants, :soldier_9_name, :string
  	add_column :frost_grave_participants, :soldier_9_type, :string
    add_column :frost_grave_participants, :soldier_9_item, :string

    add_column :frost_grave_participants, :soldier_10_name, :string
  	add_column :frost_grave_participants, :soldier_10_type, :string
    add_column :frost_grave_participants, :soldier_10_item, :string

  	remove_column :frost_grave_participants, :warband_member_1
    remove_column :frost_grave_participants, :warband_member_2
    remove_column :frost_grave_participants, :warband_member_3
    remove_column :frost_grave_participants, :warband_member_4
    remove_column :frost_grave_participants, :warband_member_5
    remove_column :frost_grave_participants, :warband_member_6
    remove_column :frost_grave_participants, :warband_member_7
    remove_column :frost_grave_participants, :warband_member_8
  end
end
