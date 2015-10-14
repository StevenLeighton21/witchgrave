class FgpItemsController < ApplicationController

def new
  @fgp_item = FgpItem.new
end

def edit
  @fgp_item = FgpItem.find(params[:id])
end

  def update
    @fgp_item = FgpItem.find(params[:id])

    if @fgp_item.update_attributes(fgp_item_params)
      flash[:success] = "Item updated"
      redirect_to frost_grave_participant_path(@fgp_item.frost_grave_participant_id)
    else
      render 'edit'
    end
  end

def create
  @participant = FrostGraveParticipant.find(params[:fgp_item][:frost_grave_participant_id])
  params[:fgp_item][:sale_price] = params[:fgp_item][:cost].to_i / 2
  params[:fgp_item][:cost] = params[:fgp_item][:looted] == "true" ? 0 : params[:fgp_item][:cost]

  @fgp_item = @participant.fgp_items.build(fgp_item_params)
  if @participant.save
    flash[:success] = "Item added to stash"
    redirect_to frost_grave_participant_path(@participant.id)
  else
    render'new'
  end
end

  def destroy
    @fgp_item = FgpItem.find(params[:id])
    if params[:discard].eql?("true")
      @fgp_item.update_attribute(:sale_price, 0)
    end
    @participant = @fgp_item.frost_grave_participant
    @fgp_item.destroy
    flash[:success] = "Item Removed"
    redirect_to frost_grave_participant_path(@participant.id)
  end

private
  def fgp_item_params
    params.require(:fgp_item).permit(
      :name,
      :description,
      :cost,
      :sale_price,
      :passive_effect,
      :passive_effect_stat,
      :passive_effect_value,
    )
  end
end
