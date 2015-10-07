class FrostGraveParticipant < ActiveRecord::Base
  belongs_to :campaign
  has_many :spells, dependent: :destroy
  has_many :fgp_items, dependent: :destroy
  has_many :fgp_soldiers, dependent: :destroy
  has_one :base_of_operations, dependent: :destroy

  validates :campaign_id, presence: true
  validates :starting_cache, numericality: { greater_than: 0, :message => " is empty, Warband costs more than 500GC"}

end
