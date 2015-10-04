class GoldStuff < ActiveRecord::Migration
  def change
  	add_column :frost_grave_participants, :gold_earned, :integer
  	add_column :frost_grave_participants, :gold_spent, :integer
  end
end
