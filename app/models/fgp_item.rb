class FgpItem < ActiveRecord::Base
	belongs_to :frost_grave_participant
	after_save :update_cache
	before_destroy :update_sale_cache

  def update_cache
  	current_spend = self.frost_grave_participant.gold_spent
    self.frost_grave_participant.update_attribute(:gold_spent, current_spend + self.cost)
    gold_cache
  end

  def update_sale_cache
    if self.sale_price > 0
  	  current_spend = self.frost_grave_participant.gold_earned
  	  self.frost_grave_participant.update_attribute(:gold_earned, current_spend + self.sale_price)
  	  gold_cache
    end
  end

  private

  def gold_cache
  	spent = self.frost_grave_participant.gold_spent
    earned = self.frost_grave_participant.gold_earned
    self.frost_grave_participant.update_attribute(:gold_cache, earned - spent)
  end
end
