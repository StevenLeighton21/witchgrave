class Injury < ActiveRecord::Base
	belongs_to :frost_grave_participant

	validates :value, :numericality => { :greater_than => -10, :less_than_or_equal_to => 10 }
end
