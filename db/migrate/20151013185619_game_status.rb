class GameStatus < ActiveRecord::Migration
  def change
  	add_column :frost_grave_participants, :wizard_status, :string
  	add_column :frost_grave_participants, :apprentice_status, :string
  	add_column :fgp_soldiers, :status, :string
  end
end
