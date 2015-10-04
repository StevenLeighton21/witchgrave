class Injuries < ActiveRecord::Migration
  def change
  	add_column :frost_grave_participants, :wizard_injuries, :text
  	add_column :frost_grave_participants, :apprentice_injuries, :text
  end
end
