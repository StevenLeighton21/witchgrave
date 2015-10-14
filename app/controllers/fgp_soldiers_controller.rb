class FgpSoldiersController < ApplicationController
  def new
    @fgp_soldier = FgpSoldier.new
    @default_soldiers = Soldier.all
  end

  def edit
    @fgp_soldier = FgpSoldier.find(params[:id])
  end

  def index
  end

  def show
  end

  def update
    @fgp_soldier = FgpSoldier.find(params[:id])
    @default_soldiers = Soldier.all
    if @fgp_soldier.update_attributes(fgp_soldier_params.merge(:skip_callbacks => true))
      flash[:success] = "Soldier updated"
      redirect_to frost_grave_participant_path(@fgp_soldier.frost_grave_participant_id)
    else
      render 'edit'
    end
  end

  def injure_soldier
    @fgp_soldier = FgpSoldier.find(params[:id])

    if @fgp_soldier.update_attributes(:status => "danger", :skip_callbacks => true)
      flash[:success] = "Soldier updated"
      redirect_to frost_grave_participant_path(@fgp_soldier.frost_grave_participant_id)
    else
      flash[:warning] = "Soldier failed to update"
      redirect_to frost_grave_participant_path(@fgp_soldier.frost_grave_participant_id)
    end
  end

  def recover_soldier
    @fgp_soldier = FgpSoldier.find(params[:id])

    if @fgp_soldier.update_attributes(:status => "", :skip_callbacks => true)
      flash[:success] = "Soldier recovered"
      redirect_to frost_grave_participant_path(@fgp_soldier.frost_grave_participant_id)
    else
      flash[:warning] = "Soldier failed to update"
      redirect_to frost_grave_participant_path(@fgp_soldier.frost_grave_participant_id)
    end
  end

  def create
    @participant = FrostGraveParticipant.find(params[:fgp_soldier][:frost_grave_participant_id])
    @default_soldiers = Soldier.all
    #todo fix dupe id bug 
    @fgp_soldier = @participant.fgp_soldiers.build(@default_soldiers.find_by_class_name(params[:fgp_soldier][:class_name]).clone.attributes)
    @fgp_soldier.id = params[:fgp_soldier][:id]
    @fgp_soldier.name = params[:fgp_soldier][:name]
    if @participant.save
      flash[:success] = "Soldier hired"
      redirect_to frost_grave_participant_path(@participant.id)
    else
      render'new'
    end
  end

  def destroy
    @fgp_soldier = FgpSoldier.find(params[:id])
    @participant = @fgp_soldier.frost_grave_participant
    @fgp_soldier.sale_price = params[:sell] == "true" ? @fgp_soldier.cost : 0
    @fgp_soldier.destroy
    flash[:success] = "Soldier no longer part of the warband..."
    redirect_to frost_grave_participant_path(@participant.id)
  end


  private
    def fgp_soldier_params
      params.require(:fgp_soldier).permit(
      :name,
      :class,
      :item,
      :move,
      :fight, 
      :shoot, 
      :armour,
      :will, 
      :health, 
      :cost, 
      :notes, 
      )
    end
end
