class FrostGraveParticipant < ActiveRecord::Base
  belongs_to :campaign
  has_many :spells, dependent: :destroy
  has_many :fgp_items, dependent: :destroy
  has_many :fgp_soldiers, dependent: :destroy
  has_many :injuries, dependent: :destroy
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

  def string_for_wizard_injuries
    string = ""
    injuries = self.injuries.all

    injuries.each do |injury|
      if injury.caster_affected == "Wizard"
        string = string + injury.name + ", "
      end
    end
    return string
  end

  def string_for_apprentice_injuries
    string = ""
    injuries = self.injuries.all

    injuries.each do |injury|
      if injury.caster_affected == "Apprentice"
        string = string + injury.name + ", "
      end
    end
    return string
  end

  def string_for_stat(caster, stat)
    injuries = self.injuries.all
    val2 = 0
    case stat
    when "Move"
      if caster.eql?("Wizard")
        val1 = self.wizard_move.to_i

        injuries.each do |i|
          val2 = (val2 + i.value.to_i) if i.caster_affected.eql?(caster) && i.stat_modified.eql?(stat)
        end
        return string_for_vals(val1, val2)
      else
        val1 = self.apprentice_move.to_i

        injuries.each do |i|
          val2 = (val2 + i.value.to_i) if i.caster_affected.eql?(caster) && i.stat_modified.eql?(stat)
        end
        return string_for_vals(val1, val2)
      end

    when "Fight"
      if caster.eql?("Wizard")
        val1 = self.wizard_fight.to_i

        injuries.each do |i|
          val2 = (val2 + i.value.to_i) if i.caster_affected.eql?(caster) && i.stat_modified.eql?(stat)
        end
        return string_for_vals(val1, val2)
      else
        val1 = self.apprentice_fight.to_i

        injuries.each do |i|
          val2 = (val2 + i.value.to_i) if i.caster_affected.eql?(caster) && i.stat_modified.eql?(stat)
        end
        return string_for_vals(val1, val2)
      end

    when "Shoot"
      if caster.eql?("Wizard")
        val1 = self.wizard_shoot.to_i

        injuries.each do |i|
          val2 = (val2 + i.value.to_i) if i.caster_affected.eql?(caster) && i.stat_modified.eql?(stat)
        end
        return string_for_vals(val1, val2)
      else
        val1 = self.apprentice_shoot.to_i

        injuries.each do |i|
          val2 = (val2 + i.value.to_i) if i.caster_affected.eql?(caster) && i.stat_modified.eql?(stat)
        end
        return string_for_vals(val1, val2)
      end

    when "Armour"
      if caster.eql?("Wizard")
        val1 = self.wizard_armour.to_i

        injuries.each do |i|
          val2 = (val2 + i.value.to_i) if i.caster_affected.eql?(caster) && i.stat_modified.eql?(stat)
        end
        return string_for_vals(val1, val2)
      else
        val1 = self.apprentice_armour.to_i

        injuries.each do |i|
          val2 = (val2 + i.value.to_i) if i.caster_affected.eql?(caster) && i.stat_modified.eql?(stat)
        end
        return string_for_vals(val1, val2)
      end

    when "Will"
      if caster.eql?("Wizard")
        val1 = self.wizard_will.to_i

        injuries.each do |i|
          val2 = (val2 + i.value.to_i) if i.caster_affected.eql?(caster) && i.stat_modified.eql?(stat)
        end
        return string_for_vals(val1, val2)
      else
        val1 = self.apprentice_will.to_i

        injuries.each do |i|
          val2 = (val2 + i.value.to_i) if i.caster_affected.eql?(caster) && i.stat_modified.eql?(stat)
        end
        return string_for_vals(val1, val2)
      end

    when "Health"
      if caster.eql?("Wizard")
        val1 = self.wizard_health.to_i

        injuries.each do |i|
          val2 = (val2 + i.value.to_i) if i.caster_affected.eql?(caster) && i.stat_modified.eql?(stat)
        end
        return string_for_vals(val1, val2)
      else
        val1 = self.apprentice_health.to_i

        injuries.each do |i|
          val2 = (val2 + i.value.to_i) if i.caster_affected.eql?(caster) && i.stat_modified.eql?(stat)
        end
        return string_for_vals(val1, val2)
      end
    end
  end

  def string_for_vals(val1, val2)
    modified2 = val1 + val2
    modified2 = modified2 > 0 ? "+" + modified2.to_s : modified2.to_s
    modified1 = val1 > 0 ? "+" + val1.to_s : val1.to_s
    if val2.eql?(0)
      return modified1
    else
      return modified1 + "/" + modified2
    end
  end
end
