json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :creator_id, :name, :description, :member_id
  json.url campaign_url(campaign, format: :json)
end
