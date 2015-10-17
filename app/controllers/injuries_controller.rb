class InjuriesController < ApplicationController
  def new
    @injury = Injury.new
  end

  def create
    @participant = FrostGraveParticipant.find(params[:injury][:frost_grave_participant_id])
    @injury = @participant.injuries.build(injury_params)

    if @participant.save
      flash[:success] = "Injury added"
      redirect_to frost_grave_participant_path(@participant.id)
    else
      render'new'
    end
  end

  private
    def injury_params
      params.require(:injury).permit(
        :name,
        :stat_modified,
        :value,
        :caster_affected
        )
    end
end
