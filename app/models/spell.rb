class Spell < ActiveRecord::Base
	belongs_to :frost_grave_participant

	validates :discipline, presence: true
	validates :name, presence: true
	validates :casting_value, presence: true
	validates :range, presence: true
	validates :description, presence: true
end
