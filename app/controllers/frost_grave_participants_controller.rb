class FrostGraveParticipantsController < ApplicationController
 before_action :logged_in_user, only: [:create, :destroy, :update]
 
 STARTING_WEAPONS = [
  ['Staff'],
  ['Hand Weapon']
 ]

 ADDITIONAL_WEAPONS = [
  ['Dagger'],
  ['Two-handed Weapon'],
  ['Crossbow']
 ]

  def new
    @participant = FrostGraveParticipant.new
    @budget = 500
    @soldiers = Soldier.all
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
    @base        = @participant.base_of_operations
    @items       = @participant.fgp_items.all
  end

  def update
    # TODO this is hella ugly, split into helper methods
    @participant = FrostGraveParticipant.find(params[:id])


    xp = params[:frost_grave_participant][:wizard_xp].to_i
    level = xp / 100
    current_cache = @participant.gold_cache.to_i

    params[:frost_grave_participant][:wizard_level] = level.floor + 1

    wf = params[:frost_grave_participant][:wizard_fight]
    af = wf.to_i - 2
    s_af = af >= 0 ? "+#{af}" : af.to_s
    params[:frost_grave_participant][:apprentice_fight] = s_af

    ws = params[:frost_grave_participant][:wizard_shoot]
    as = ws.to_i - 2
    s_as = as >= 0 ? "+#{as}" : as.to_s
    params[:frost_grave_participant][:apprentice_shoot] = s_as

    ww = params[:frost_grave_participant][:wizard_will]
    aw = ww.to_i - 2
    s_aw = aw >= 0 ? "+#{aw}" : aw.to_s
    params[:frost_grave_participant][:apprentice_will] = s_aw

    wh = params[:frost_grave_participant][:wizard_health].to_i
    params[:frost_grave_participant][:apprentice_health] = wh - 4

    if @participant.update_attributes(update_frost_grave_participant_params)
      flash[:success] = "Warband updated"
      redirect_to frost_grave_participant_path(@participant.id)
    else
      render 'edit'
    end
  end

  def create
    @campaign = Campaign.find(params[:frost_grave_participant][:campaign_id])
    
    @soldiers = Soldier.all
    warband_cost = total_cost(@soldiers, frost_grave_participant_params)
    params[:frost_grave_participant][:gold_earned] = 500
    params[:frost_grave_participant][:gold_spent] = warband_cost
    starting_cache = 500 - warband_cost
    params[:frost_grave_participant][:gold_cache]     = starting_cache
    params[:frost_grave_participant][:starting_cache] = starting_cache

    @participant = @campaign.frost_grave_participants.build(frost_grave_participant_params)
    if @participant.save
      flash[:success] = "Warband created successfully"
      redirect_to frost_grave_participant_path(@participant.id)
        
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
        :wizard_inventory_1,
        :wizard_inventory_2,
        :wizard_inventory_3,
        :wizard_inventory_4,
        :wizard_inventory_5,
        :wizard_discipline,
        :apprentice_name,
        :apprentice_inventory_1,
        :apprentice_inventory_2,
        :apprentice_inventory_3,
        :apprentice_inventory_4,
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
        :item_stash,
        :gold_cache,
        :gold_earned,
        :gold_spent,
        :starting_cache,
        :apprentice_hired
        ).merge(user_id: current_user.id,
                wizard_xp: 0,
                wizard_level: 1,
                wizard_move: 6,
                wizard_fight: "+2",
                wizard_shoot: "+0",
                wizard_armour: 10,
                wizard_will: "+4",
                wizard_health: 14,
                apprentice_move: 6,
                apprentice_fight: "+0",
                apprentice_shoot: "-2",
                apprentice_armour: 10,
                apprentice_will: "+2",
                apprentice_health: 10,
                item_stash: ""
                )
    end

    def update_frost_grave_participant_params
      params.require(:frost_grave_participant).permit(
        :name,
        :wizard_name,
        :wizard_xp,
        :wizard_level,
        :wizard_inventory_1,
        :wizard_inventory_2,
        :wizard_inventory_3,
        :wizard_inventory_4,
        :wizard_inventory_5,
        :wizard_move,
        :wizard_fight,
        :wizard_shoot,
        :wizard_armour,
        :wizard_will,
        :wizard_health,
        :wizard_discipline,
        :wizard_injuries,
        :apprentice_name,
        :apprentice_inventory_1,
        :apprentice_inventory_2,
        :apprentice_inventory_3,
        :apprentice_inventory_4,
        :apprentice_move,
        :apprentice_fight,
        :apprentice_shoot,
        :apprentice_armour,
        :apprentice_will,
        :apprentice_health,
        :apprentice_injuries,
        :soldier_1_name,
        :soldier_1_type,
        :soldier_1_item,
        :soldier_2_name,
        :soldier_2_type,
        :soldier_2_item,
        :soldier_3_name,
        :soldier_3_type,
        :soldier_3_item,
        :soldier_4_name,
        :soldier_4_type,
        :soldier_4_item,
        :soldier_5_name,
        :soldier_5_type,
        :soldier_5_item,
        :soldier_6_name,
        :soldier_6_type,
        :soldier_6_item,
        :soldier_7_name,
        :soldier_7_type,
        :soldier_7_item,
        :soldier_8_name,
        :soldier_8_type,
        :soldier_8_item,
        :apprentice_hired
        ).merge(user_id: current_user.id)
    end

    def correct_user

      @user = User.find(@participant.user_id)
      redirect_to(root_url) unless current_user?(@user)
    end

    def total_cost(soldiers, params)
      cost = 0
      if params[:wizard_inventory_2] != ""
        cost += 5
      end
      if params[:apprentice_hired] == "1"
        cost += 200
      end
      if params[:apprentice_inventory_2] != ""
        cost += 5
      end
      if params.has_key?(:soldier_1_type) && params[:soldier_1_type] != ""
        cost += @soldiers.find_by_class_name(params[:soldier_1_type]).cost
      end
      if params.has_key?(:soldier_2_type) && params[:soldier_2_type] != ""
        cost += @soldiers.find_by_class_name(params[:soldier_2_type]).cost
      end
      if params.has_key?(:soldier_3_type) && params[:soldier_3_type] != ""
        cost += @soldiers.find_by_class_name(params[:soldier_3_type]).cost
      end
      if params.has_key?(:soldier_4_type) && params[:soldier_4_type] != ""
        cost += @soldiers.find_by_class_name(params[:soldier_4_type]).cost
      end
      if params.has_key?(:soldier_5_type) && params[:soldier_5_type] != ""
        cost += @soldiers.find_by_class_name(params[:soldier_5_type]).cost
      end
      if params.has_key?(:soldier_6_type) && params[:soldier_6_type] != ""
        cost += @soldiers.find_by_class_name(params[:soldier_6_type]).cost
      end
      if params.has_key?(:soldier_7_type) && params[:soldier_7_type] != ""
        cost += @soldiers.find_by_class_name(params[:soldier_7_type]).cost
      end
      if params.has_key?(:soldier_8_type) && params[:soldier_8_type] != ""
        cost += @soldiers.find_by_class_name(params[:soldier_8_type]).cost
      end
      return cost
    end
end
