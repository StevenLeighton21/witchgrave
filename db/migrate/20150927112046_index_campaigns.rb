class IndexCampaigns < ActiveRecord::Migration
  def change
  	add_index :campaigns, [:user_id, :created_at]
  end
end
