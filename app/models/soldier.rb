class Soldier < ActiveRecord::Base
  def class_name_with_cost
    "#{class_name} - #{cost}GC"
  end
end
