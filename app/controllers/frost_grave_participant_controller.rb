class FrostGraveParticipantsController < ApplicationController
 before_action :logged_in_user, only: [:create, :destroy]
 before_action :correct_user,   only: :destroy

  def new
    @participant = FrostGraveParticipant.new
  end

  def edit
    @participant = FrostGraveParticipant.find(params[:id])
  end

  def index
    @participant = FrostGraveParticipant.paginate(page: params[:page])
  end

  def show
    @participant = FrostGraveParticipant.find(params[:id])
    
  end

  def update
    @participant = FrostGraveParticipant.find(params[:id])
    if @participant.update_attributes(campaigns_params)
      flash[:success] = "Warband updated"
      redirect_to current_campaign
    else
      render 'edit'
    end
  end

  def create
    @participant = FrostGraveParticipant.new(frost_grave_participant_params)

    if @participant.save
      flash[:success] = "Warband created successfully"
      redirect_to current_campaign
        
    else
      render'new'
    end
  end

  def destroy
    frost_grave_participants.find(params[:id]).destroy
    flash[:success] = "Warband deleted"
    redirect_back_or current_campaign
  end

  private
    def frost_grave_participant_params
      params.require(:frost_grave_participant).permit(
        :name,
        :wizard_name,
        :wizard_weapon,
        :apprentice_name,
        :apprentice_weapon,
        :wizard_spells
        ).merge(user_id: current_user.id, campaign_id: current_campaign.id)
    end

    def correct_user
      @campaigns = current_user.campaigns.find_by(id: params[:id])
      redirect_to current_user if @campaigns.nil?
    end

end
