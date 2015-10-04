# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "Steven",
             email: "steven.leighton21@gmail.com",
             password:              "frostgr@ve",
             password_confirmation: "frostgr@ve",
             admin: true)

Soldier.create!(class_name: "War Hound",
                move:       8,
                fight:      "+1",
                shoot:      "+0",
                armour:     10,
                will:       "+2",
                health:     8,
                cost:       10,
                notes:      "Animal, cannot carry treasure or items.")

Soldier.create!(class_name: "Thug",
                move:       6,
                fight:      "+2",
                shoot:      "+0",
                armour:     10,
                will:       "-1",
                health:     10,
                cost:       20,
                notes:      "Hand Weapon")

Soldier.create!(class_name: "War Hound",
                move:       8,
                fight:      "+1",
                shoot:      "+0",
                armour:     10,
                will:       "+2",
                health:     8,
                cost:       10,
                notes:      "Animal, cannot carry treasure or items.")

Soldier.create!(class_name: "Thief",
                move:       7,
                fight:      "+1",
                shoot:      "+0",
                armour:     10,
                will:       "+0",
                health:     10,
                cost:       20,
                notes:      "Dagger")

Soldier.create!(class_name: "Archer",
                move:       6,
                fight:      "+2",
                shoot:      "+2",
                armour:     11,
                will:       "+0",
                health:     10,
                cost:       50,
                notes:      "Bow, Dagger, Leather armour")

Soldier.create!(class_name: "Crossbowman",
                move:       6,
                fight:      "+2",
                shoot:      "+2",
                armour:     11,
                will:       "+0",
                health:     10,
                cost:       50,
                notes:      "Crossbow, Dagger, Leather armour")

Soldier.create!(class_name: "Infantryman",
                move:       6,
                fight:      "+3",
                shoot:      "+0",
                armour:     11,
                will:       "+0",
                health:     10,
                cost:       50,
                notes:      "Two-handed Weapon, Leather armour")

Soldier.create!(class_name: "Tracker",
                move:       7,
                fight:      "+2",
                shoot:      "+2",
                armour:     11,
                will:       "+1",
                health:     12,
                cost:       80,
                notes:      "Staff, Bow, Leather armour")

Soldier.create!(class_name: "Man-at-arms",
                move:       6,
                fight:      "+3",
                shoot:      "+0",
                armour:     12,
                will:       "+1",
                health:     12,
                cost:       80,
                notes:      "Hand Weapon, Shield, Leather armour")

Soldier.create!(class_name: "Treasure Hunter",
                move:       7,
                fight:      "+4",
                shoot:      "+0",
                armour:     11,
                will:       "+2",
                health:     12,
                cost:       80,
                notes:      "Hand Weapon, Dagger, Leather armour")

Soldier.create!(class_name: "Knight",
                move:       5,
                fight:      "+4",
                shoot:      "+0",
                armour:     13,
                will:       "+1",
                health:     12,
                cost:       100,
                notes:      "Hand Weapon, Shield, Mail armour")

Soldier.create!(class_name: "Templar",
                move:       5,
                fight:      "+4",
                shoot:      "+0",
                armour:     12,
                will:       "+1",
                health:     12,
                cost:       100,
                notes:      "Two-handed Weapon, Mail armour")

Soldier.create!(class_name: "Ranger",
                move:       7,
                fight:      "+2",
                shoot:      "+2",
                armour:     11,
                will:       "+2",
                health:     12,
                cost:       100,
                notes:      "Hand Weapon, Bow, Leather armour")

Soldier.create!(class_name: "Barbarian",
                move:       6,
                fight:      "+4",
                shoot:      "+0",
                armour:     10,
                will:       "+3",
                health:     14,
                cost:       100,
                notes:      "Two-handed Weapon")

Soldier.create!(class_name: "Apothecary",
                move:       6,
                fight:      "+0",
                shoot:      "+0",
                armour:     10,
                will:       "+0",
                health:     12,
                cost:       100,
                notes:      "Staff, Starts each game with a healing potion")

Soldier.create!(class_name: "Marksman",
                move:       5,
                fight:      "+2",
                shoot:      "+3",
                armour:     12,
                will:       "+1",
                health:     12,
                cost:       100,
                notes:      "Crossbow, Hand Weapon, Mail armour")

Location.create!(name: "Inn",
                 effects: "Maximum warband size (including the wizard) is increased to 11")

Location.create!(name: "Temple",
                 effects: "Spellcasters receive a +1 bonus to cast attempts of Miraculous Cure and Restore Life spells")

Location.create!(name: "Crypt",
                 effects: "Spellcasters receive a +2 bonus to cast attempts of Raise Zombie spells")

Location.create!(name: "Tower",
                 effects: "Spellcasters receive a +2 bonus to cast attempts of Reveal Secret spells")

Location.create!(name: "Treasury",
                 effects: "After each game the player may roll a D20 and gain the following result:
                 1 - Warband member of their choice must miss the next game
                 2 to 18 - Add this number of GC to the warband gold cache
                 19 - Add 100GC to the warband gold cache
                 20 - Gain a treasure token")

Location.create!(name: "Brewery",
                 effects: "Soldiers cost 5GC less to hire, and after each game the warband earns an additional 10GC")

Location.create!(name: "Library",
                 effects: "After each game the player may roll a D20 and gain the following result:
                 1 to 16 - Nothing
                 17 to 19 - Add a random Scroll to the item cache
                 20 - Add a random Grimoire to the item cache")

Location.create!(name: "Laboratory",
                 effects: "After each game the Wizard gains 20 XP")





