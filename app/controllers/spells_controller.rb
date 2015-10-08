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
  ["Thaumaturge"],
  ["Witch"]
] 

  def new
    @spell = Spell.new
    @default_spells = DefaultSpell.all

  end

  def edit
    @spell = Spell.find(params[:id])
    level_up
  end

  def index
  end

  def show
  end

  def update
    # @spell = Spell.find(params[:id])

    # if @spell.update_attributes(spell_params)
    #   flash[:success] = "Spell updated"
    #   redirect_to frost_grave_participant_path(@spell.frost_grave_participant_id)
    # else
    #   render 'edit'
    # end
  end

  def level_up
    @spell = Spell.find(params[:id])
    current_cast = @spell.casting_value.to_i
    new_cast = params[:undo] == "true" ? current_cast + 2 : current_cast - 2

    if @spell.update_attributes(:casting_value => new_cast)
      flash[:success] = "Spell Updated!"
      redirect_to frost_grave_participant_path(@spell.frost_grave_participant_id)
    else
      render 'edit'
    end
  end

  def create
    #todo : much suck
    @participant = FrostGraveParticipant.find(params[:frost_grave_participant_id])
    @default_spells = DefaultSpell.all
    spell_attr = @default_spells.find_by_name(params[:spell_name]).clone.attributes.merge(:id => nil)
    
    @spell = @participant.spells.build(spell_attr)
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
