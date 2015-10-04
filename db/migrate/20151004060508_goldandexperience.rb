class Goldandexperience < ActiveRecord::Migration
  def change
  	add_column :frost_grave_participants, :gold_cache, :string
  	add_column :frost_grave_participants, :wizard_xp, :string
  	add_column :frost_grave_participants, :item_stash, :string

  	add_column :frost_grave_participants, :wizard_inventory_1, :string
  	add_column :frost_grave_participants, :wizard_inventory_2, :string
  	add_column :frost_grave_participants, :wizard_inventory_3, :string
  	add_column :frost_grave_participants, :wizard_inventory_4, :string
  	add_column :frost_grave_participants, :wizard_inventory_5, :string

  	add_column :frost_grave_participants, :apprentice_inventory_1, :string
  	add_column :frost_grave_participants, :apprentice_inventory_2, :string
  	add_column :frost_grave_participants, :apprentice_inventory_3, :string
  	add_column :frost_grave_participants, :apprentice_inventory_4, :string
  end
end
