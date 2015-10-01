class Fixcampaignname < ActiveRecord::Migration
  def change
  	add_column :frost_grave_participants, :campaign_id, :integer
  	add_index :frost_grave_participants, [:campaign_id, :created_at]
  end
  
end
