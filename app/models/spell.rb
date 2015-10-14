class Spell < ActiveRecord::Base
	belongs_to :frost_grave_participant

	validates :discipline, presence: true
	validates :name, presence: true
	validates :casting_value, presence: true
	validates :range, presence: true
	validates :description, presence: true

  def string_for_casting_value
    wizard_discipline = self.frost_grave_participant.wizard_discipline
    spell_discipline  = self.discipline
    cast_value        = self.casting_value.to_i
    aligned_value     = cast_value.to_i + 2 
    opposed_value     = cast_value.to_i + 6
    neutral_value     = cast_value.to_i + 4 

    if wizard_discipline.eql?(spell_discipline) #same
      return "<span style='color:green'> #{cast_value} </span>".html_safe
    elsif aligned_for(wizard_discipline).include?(spell_discipline)  #aligned
      return "<span style='color:blue'> #{aligned_value} </span>".html_safe
    elsif spell_discipline.eql?(opposed_for(wizard_discipline)) # opposed
      return "<span style='color:red'> #{opposed_value} </span>".html_safe
    else #must be neutral
      return "<span style='color:orange'> #{neutral_value} </span>".html_safe
    end
  end

  def cast_box_for_casting_value
        wizard_discipline = self.frost_grave_participant.wizard_discipline
    spell_discipline  = self.discipline
    cast_value        = self.casting_value.to_i
    aligned_value     = cast_value.to_i + 2 
    opposed_value     = cast_value.to_i + 6
    neutral_value     = cast_value.to_i + 4 

    if wizard_discipline.eql?(spell_discipline) #same
      return "green"
    elsif aligned_for(wizard_discipline).include?(spell_discipline)  #aligned
      return "blue"
    elsif spell_discipline.eql?(opposed_for(wizard_discipline)) # opposed
      return "red"
    else #must be neutral
      return "orange"
    end
  end

  def aligned_for(discipline)
    case discipline
    when "Chronomancer"
      return ["Necromancer", "Soothsayer", "Elementalist"]
    when "Elementalist"
      return ["Chronomancer", "Enchanter", "Chronomancer"]
    when "Enchanter"
      return ["Witch", "Sigilist", "Elementalist"]
    when "Illusionist"
      return ["Sigilist", "Soothsayer", "Thaumaturge"]
    when "Necromancer"
      return ["Witch", "Chronomancer", "Summoner"]
    when "Sigilist"
      return ["Thaumaturge", "Illusionist", "Enchanter"]
    when "Soothsayer"
      return ["Thaumaturge", "Chronomancer", "Illusionist"]
    when "Summoner"
      return ["Necromancer", "Witch", "Elementalist"]
    when "Thaumaturge"
      return ["Illusionist", "Soothsayer", "Sigilist"]
    when "Witch"
      return ["Enchanter", "Necromancer", "Summoner"]
    end
  end

  def opposed_for(discipline)
    case discipline
    when "Chronomancer"
      return "Enchanter"
    when "Elementalist"
      return "Illusionist"
    when "Enchanter"
      return "Chronomancer"
    when "Illusionist"
      return "Elementalist"
    when "Necromancer"
      return "Thaumaturge"
    when "Sigilist"
      return "Summoner"
    when "Soothsayer"
      return "Witch"
    when "Summoner"
      return "Sigilist"
    when "Thaumaturge"
      return "Necromancer"
    when "Witch"
      return "Soothsayer"
    end
  end
end
