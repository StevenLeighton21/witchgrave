class CampaignPassword < ActiveRecord::Migration
  def change
  	add_column :frost_grave_participants, :campaign_password, :string
  	add_column :campaigns, :campaign_password, :string
  end
end
