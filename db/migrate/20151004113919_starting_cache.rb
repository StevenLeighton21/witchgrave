class StartingCache < ActiveRecord::Migration
  def change
  	add_column :frost_grave_participants, :starting_cache, :integer
  end
end
