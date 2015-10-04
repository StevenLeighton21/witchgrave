module FrostGraveParticipantHelper
    def calculate_cost
      cost = 0
      if :wizard_inventory_2 != 'None'
        cost += 5
      end
      if :apprentice_name != nil
        cost += 200
      end
      if :apprentice_inventory_2 != 'None'
        cost += 5
      end
      if :soldier_1_type != nil
        cost += @soldiers.find_by_class_name(:soldier_1_type).cost
      end
      if :soldier_2_type != nil
        cost += @soldiers.find_by_class_name(:soldier_2_type).cost
      end
      if :soldier_3_type != nil
        cost += @soldiers.find_by_class_name(:soldier_3_type).cost
      end
      if :soldier_4_type != nil
        cost += @soldiers.find_by_class_name(:soldier_4_type).cost
      end
      if :soldier_5_type != nil
        cost += @soldiers.find_by_class_name(:soldier_5_type).cost
      end
      if :soldier_6_type != nil
        cost += @soldiers.find_by_class_name(:soldier_6_type).cost
      end
      if :soldier_7_type != nil
        cost += @soldiers.find_by_class_name(:soldier_7_type).cost
      end
      if :soldier_8_type != nil
        cost += @soldiers.find_by_class_name(:soldier_8_type).cost
      end
      yield cost
    end
end
