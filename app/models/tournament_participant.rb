class TournamentParticipant < ActiveRecord::Base
	belongs_to :tournament

	validates :tournament_id, presence: true
end
