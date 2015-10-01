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
    @campaign = Campaign.find()
    @participant = FrostGraveParticipant.find(params[:id])

    if @participant.update_attributes(frost_grave_participant_params)
      flash[:success] = "Warband updated"
      redirect_to current_user
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
    frost_grave_participants.find(params[:id]).destroy
    flash[:success] = "Warband deleted"
    redirect_back_or current_user
  end

  private
    def frost_grave_participant_params
      params.require(:frost_grave_participant).permit(
        :name,
        :campaign_id,
        :wizard_name,
        :wizard_weapon,
        :apprentice_name,
        :apprentice_weapon,
        :wizard_spells
        ).merge(user_id: current_user.id)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end
