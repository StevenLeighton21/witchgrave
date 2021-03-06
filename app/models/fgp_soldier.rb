class FgpSoldier < ActiveRecord::Base
  cattr_accessor :skip_callbacks
  belongs_to :frost_grave_participant

	after_save :update_cache, :unless => :skip_callbacks
  after_create :update_cache
	before_destroy :update_sale_cache

  def update_cache
  	current_spend = self.frost_grave_participant.gold_spent
    self.frost_grave_participant.update_attribute(:gold_spent, current_spend + self.cost)
    gold_cache
  end

  def update_sale_cache
  	current_spend = self.frost_grave_participant.gold_earned
  	self.frost_grave_participant.update_attribute(:gold_earned, current_spend + self.sale_price)
  	gold_cache
  end

  def save_participant
    self.frost_grave_participant.save
  end

  private

  def gold_cache
  	spent = self.frost_grave_participant.gold_spent
    earned = self.frost_grave_participant.gold_earned
    self.frost_grave_participant.update_attribute(:gold_cache, earned - spent)
    self.frost_grave_participant.save
  end
end
