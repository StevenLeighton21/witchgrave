class SpellsController < ApplicationController

DISCIPLINES = [
  ["Chronomancer"],
  ["Elementalist"],
  ["Enchanter"],
  ["Illusionist"],
  ["Necromancer"],
  ["Sigilist"],
  ["Soothsayer"],
  ["Summoner"],
  ["Thaumaturge"]
] 

  def new
    @spell = Spell.new
  end

  def edit
    @spell = Spell.find(params[:id])
  end

  def index
  end

  def show
  end

  def update
    @spell = Spell.find(params[:id])

    if @spell.update_attributes(spell_params)
      flash[:success] = "Spell updated"
      redirect_to frost_grave_participant_path(@spell.frost_grave_participant_id)
    else
      render 'edit'
    end
  end

  def create
    @participant = FrostGraveParticipant.find(params[:spell][:frost_grave_participant_id])
    @spell = @participant.spells.build(spell_params)
    if @participant.save
      flash[:success] = "Spell successfully learned"
      redirect_to frost_grave_participant_path(@participant.id)
    else
      render'new'
    end
  end

  def destroy
    @spell = Spell.find(params[:id])
    @participant = @spell.frost_grave_participant
    @spell.destroy
    flash[:success] = "Spell forgotten"
    redirect_to frost_grave_participant_path(@participant.id)
  end


  private
    def spell_params
      params.require(:spell).permit(
        :discipline,
        :name,
        :casting_value,
        :range,
        :description
      )
    end
end
