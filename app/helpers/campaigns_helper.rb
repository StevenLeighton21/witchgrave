module CampaignsHelper

def user_name_with_id(id)
	return User.find(id).name
end
end
