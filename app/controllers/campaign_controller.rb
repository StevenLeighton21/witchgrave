class CampaignController < ApplicationController
 before_action :logged_in_user, only: [:create, :destroy]
  def new
    @campaign = Campaign.new
  end
def create
end

def destroy
end
end
