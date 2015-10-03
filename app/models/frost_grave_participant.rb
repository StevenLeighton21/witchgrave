class FrostGraveParticipant < ActiveRecord::Base
  belongs_to :campaign
  validates :campaign_id, presence: true
  has_many :spells, dependent: :destroy
end
