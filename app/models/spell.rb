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

    if wizard_discipline.eql?(spell_discipline)
      return "<span style='color:green'> #{cast_value} </span>".html_safe
    #elsif # aligned todo
    else # opposed
      return "<span style='color:red'> #{aligned_value} </span>".html_safe
    end
  end
end
