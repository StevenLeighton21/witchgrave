class SoldierSumm < ActiveRecord::Migration
  def change
  end

   Soldier.create!(class_name: "Illusionary Soldier",
                move:       0,
                fight:      "0",
                shoot:      "0",
                armour:     0,
                will:       "0",
                health:     0,
                cost:       0,
                status:     "summoned",
                notes:      "Cannot cause damage. Will be removed if damage is taken.")

    Soldier.create!(class_name: "Zombie",
                move:       4,
                fight:      "+0",
                shoot:      "+0",
                armour:     12,
                will:       "+0",
                health:     6,
                cost:       0,
                status:     "summoned",
                notes:      "Undead")

    Soldier.create!(class_name: "Bear",
                move:       6,
                fight:      "+2",
                shoot:      "+0",
                armour:     12,
                will:       "+2",
                health:     8,
                cost:       0,
                status:     "summoned",
                notes:      "Animal")

    Soldier.create!(class_name: "Ice Toad",
                move:       3,
                fight:      "+2",
                shoot:      "+0",
                armour:     10,
                will:       "+0",
                health:     5,
                cost:       0,
                status:     "summoned",
                notes:      "Animal, Powerful Jaws (triple damage done)")

      Soldier.create!(class_name: "Snow Leopard",
                move:       2,
                fight:      "+2",
                shoot:      "+0",
                armour:     10,
                will:       "+2",
                health:     10,
                cost:       0,
                status:     "summoned",
                notes:      "Animal")

    Soldier.create!(class_name: "Small Contruct",
                move:       6,
                fight:      "0",
                shoot:      "0",
                armour:     11,
                will:       "0",
                health:     10,
                cost:       0,
                status:     "summoned",
                notes:      "Construct")

    Soldier.create!(class_name: "Medium Contruct",
                move:       5,
                fight:      "+1",
                shoot:      "0",
                armour:     12,
                will:       "0",
                health:     12,
                cost:       0,
                status:     "summoned",
                notes:      "Construct")

    Soldier.create!(class_name: "Large Contruct",
                move:       4,
                fight:      "+3",
                shoot:      "0",
                armour:     13,
                will:       "0",
                health:     14,
                cost:       0,
                status:     "summoned",
                notes:      "Large, Construct")

      Soldier.create!(class_name: "Imp",
                move:       6,
                fight:      "+1",
                shoot:      "0",
                armour:     10,
                will:       "+4",
                health:     6,
                cost:       0,
                status:     "summoned",
                notes:      "Demon")

     Soldier.create!(class_name: "Minor Demon",
                move:       6,
                fight:      "+3",
                shoot:      "0",
                armour:     11,
                will:       "+4",
                health:     12,
                cost:       0,
                status:     "summoned",
                notes:      "Demon")

     Soldier.create!(class_name: "Major Demon",
                move:       6,
                fight:      "+4",
                shoot:      "0",
                armour:     12,
                will:       "+6",
                health:     15,
                cost:       0,
                status:     "summoned",
                notes:      "Demon, Large (optional)")
end
