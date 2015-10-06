class BaseOfOperationsController < ApplicationController
  def new
    @base = BaseOfOperations.new
    @locations = Location.all
  end

  def index
    @base = BaseOfOperations.find(params[:id])
  end

  def edit
    @base = BaseOfOperations.find(params[:id])
    @locations = Location.all
  end

  def create
    #TODO: much suck
    @participant = FrostGraveParticipant.find(params[:base_of_operations][:frost_grave_participant_id])
    # @locations = Location.all
    # name_of_loc = params[:base_of_operations][:location]
    # selected_loc = @locations.find_by_name(name_of_loc)
    # params[:base_of_operations][:effects] = selected_loc.effects
    @base = @participant.build_base_of_operations(base_params)
    if @participant.save
      flash[:success] = "Base successfully established"
      redirect_to frost_grave_participant_path(@participant.id)
    else
      render'new'
    end
  end

  def update
    @base = BaseOfOperations.find(params[:id])
    # @locations = Location.all
    # name_of_loc = params[:base_of_operations][:location]
    # selected_loc = @locations.find_by_name(name_of_loc)
    # params[:base_of_operations][:effects] = selected_loc.effects
    if @base.update_attributes(base_params)
      flash[:success] = "Base updated"
      redirect_to frost_grave_participant_path(@base.frost_grave_participant_id)
    else
      render 'edit'
    end
  end

  def destroy
    @base = BaseOfOperations.find(params[:id])
    @participant = @base.frost_grave_participant
    @base.destroy
    flash[:success] = "Base Removed"
    redirect_to frost_grave_participant_path(@participant.id)
  end

  private
    def base_params
      params.require(:base_of_operations).permit(
        :location,
        :effects
      )
    end
end
