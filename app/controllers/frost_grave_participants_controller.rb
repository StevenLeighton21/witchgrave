class FrostGraveParticipantsController < ApplicationController
 before_action :logged_in_user, only: [:create, :destroy, :update]
 

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
    @soldiers    = Soldier.all
    @spells      = @participant.spells.all
  end

  def update
    @participant = FrostGraveParticipant.find(params[:id])

    if @participant.update_attributes(update_frost_grave_participant_params)
      flash[:success] = "Warband updated"
      redirect_to campaign_path(@participant.campaign_id)
    else
      render 'edit'
    end
  end

  def create
    @campaign = Campaign.find(params[:frost_grave_participant][:campaign_id])
    @participant = @campaign.frost_grave_participants.build(frost_grave_participant_params)
    
    if @participant.save
      flash[:success] = "Warband created successfully"
      redirect_to campaign_path(@campaign.id)
        
    else
      render'new'
    end
  end


  def destroy
    @participant = FrostGraveParticipant.find(params[:id])
    @campaign = @participant.campaign
    @participant.destroy
    flash[:success] = "Warband deleted"
    redirect_to campaign_path(@campaign.id)
  end

  private
    def frost_grave_participant_params
      params.require(:frost_grave_participant).permit(
        :name,
        :campaign_id,
        :wizard_name,
        :wizard_weapon,
        :wizard_discipline,
        :apprentice_name,
        :apprentice_weapon,
        :soldier_1_name,
        :soldier_1_type,
        :soldier_2_name,
        :soldier_2_type,
        :soldier_3_name,
        :soldier_3_type,
        :soldier_4_name,
        :soldier_4_type,
        :soldier_5_name,
        :soldier_5_type,
        :soldier_6_name,
        :soldier_6_type,
        :soldier_7_name,
        :soldier_7_type,
        :soldier_8_name,
        :soldier_8_type,
        :soldier_9_name,
        :soldier_9_type,
        :soldier_10_name,
        :soldier_10_type,
        ).merge(user_id: current_user.id)
    end

    def update_frost_grave_participant_params
      params.require(:frost_grave_participant).permit(
        :name,
        :wizard_name,
        :wizard_weapon,
        :apprentice_name,
        :apprentice_weapon,
        :wizard_discipline,
        :soldier_1_name,
        :soldier_1_type,
        :soldier_2_name,
        :soldier_2_type,
        :soldier_3_name,
        :soldier_3_type,
        :soldier_4_name,
        :soldier_4_type,
        :soldier_5_name,
        :soldier_5_type,
        :soldier_6_name,
        :soldier_6_type,
        :soldier_7_name,
        :soldier_7_type,
        :soldier_8_name,
        :soldier_8_type,
        :soldier_9_name,
        :soldier_9_type,
        :soldier_10_name,
        :soldier_10_type,
        ).merge(user_id: current_user.id)
    end

    def correct_user

      @user = User.find(@participant.user_id)
      redirect_to(root_url) unless current_user?(@user)
    end

end
