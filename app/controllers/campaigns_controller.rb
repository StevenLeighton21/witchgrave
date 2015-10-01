class CampaignsController < ApplicationController
 before_action :logged_in_user, only: [:create, :destroy]
 before_action :correct_user,   only: :destroy

  def new
    @campaigns = Campaign.new
  end

  def edit
    @campaigns = Campaign.find(params[:id])

  end

  def index
    @campaigns = Campaign.paginate(page: params[:page])
  end

  def show
    @campaigns = Campaign.find(params[:id])
    @participants =  @campaigns.frost_grave_participants.all
  end

  def update
    @campaigns = Campaign.find(params[:id])
    if @campaigns.update_attributes(campaigns_params)
      flash[:success] = "Campaign updated"
      redirect_to current_user
    else
      render 'edit'
    end
  end

  def create
    @campaigns = Campaign.new(campaigns_params)

    if @campaigns.save
      flash[:success] = "Campaign created successfully"
      redirect_to current_user
        
    else
      render'new'
    end
  end

  def destroy
    campaigns.find(params[:id]).destroy
    flash[:success] = "Campaign deleted"
    redirect_back_or current_user
  end

  private
    def campaigns_params
      params.require(:campaign).permit(:name, :description).merge(user_id: current_user.id)
    end

    def correct_user
      @campaigns = current_user.campaigns.find_by(id: params[:id])
      redirect_to current_user if @campaigns.nil?
    end
end
