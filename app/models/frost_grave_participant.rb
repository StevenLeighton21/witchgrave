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

  def string_for_wizard_inventory
    string = "#{self.wizard_inventory_1}"
    if self.wizard_inventory_2.nil? or self.wizard_inventory_2.eql?("")
    else
      string = string + ", #{wizard_inventory_2}"
    end
    if self.wizard_inventory_3.nil? or self.wizard_inventory_3.eql?("")
    else
      string = string + ", #{wizard_inventory_3}"
    end
    if self.wizard_inventory_4.nil? or self.wizard_inventory_4.eql?("")
    else
      string = string + ", #{wizard_inventory_4}"
    end
    if self.wizard_inventory_5.nil? or self.wizard_inventory_5.eql?("")
    else
      string = string + ", #{wizard_inventory_5}"
    end
    return string
  end

  def string_for_apprentice_inventory
    string = "#{self.apprentice_inventory_1}"
    if self.apprentice_inventory_2.nil? or self.apprentice_inventory_2.eql?("")
    else
      string = string + ", #{apprentice_inventory_2}"
    end
    if self.apprentice_inventory_3.nil? or self.apprentice_inventory_3.eql?("")
    else
      string = string + ", #{apprentice_inventory_3}"
    end
    if self.apprentice_inventory_4.nil? or self.apprentice_inventory_4.eql?("")
    else
      string = string + ", #{apprentice_inventory_4}"
    end
    return string
  end
end
