class FrostGraveParticipant < ActiveRecord::Base
  belongs_to :campaign
  has_many :spells, dependent: :destroy
  has_many :fgp_items, dependent: :destroy
  has_many :fgp_soldiers, dependent: :destroy
  has_one :base_of_operations, dependent: :destroy

  validates :campaign_id, presence: true
  validates :starting_cache, numericality: { greater_than: 0, :message => " is empty, Warband costs more than 500GC"}

  validate :check_campaign_password

  def check_campaign_password
  	cam_pass = Campaign.find(self.campaign_id).campaign_password
  	if cam_pass.eql?(self.campaign_password)
  	else
  		errors.add(:campaign_password, "Invalid Campaign Authorisation. Check with the Campaign's creator...")
  	end
  end
end
