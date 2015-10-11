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

User.create!(name:  "Stevie",
             email: "stevie.boxall@gmail.com",
             password:              "frostgrave",
             password_confirmation: "frostgrave",
             admin: true)

User.create!(name:  "Rob",
             email: "rgboyce@gmail.com",
             password:              "frostgrave",
             password_confirmation: "frostgrave",
             admin: true)

User.create!(name:  "Kieron",
             email: "kieronallender@gmail.com",
             password:              "frostgrave",
             password_confirmation: "frostgrave",
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

DefaultSpell.create!(discipline:    "Chronomancer",
                     name:          "Crumble",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "This spell only works against man made structures such as buildings or walls. The spellcaster accellerates the passage of time in a small area of the structure, causing it to crumble.
                     This can effectively create a doorway sized hole in the structure. This spell can also be used to collapse a section of floor beneath a figure standing above ground level. The affected model must pass a Will roll
                     against the casting roll or fall down to the next level down, suffering fall damage as appropriate.")

DefaultSpell.create!(discipline:    "Chronomancer",
                     name:          "Decay",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "The spellcaster selects and attacks a target’s weapon, causing it to decay and fall apart, rendering it useless for the rest of the game. This spell has no effect on magic weapons (even those only temporarily enchanted).")

DefaultSpell.create!(discipline:    "Chronomancer",
                     name:          "Fast Act",
                     casting_value: 8,
                     range:         "Line of Sight",
                     description:   "The target figure will act first next turn, in a special phase before either player’s wizard phase. If this spell is cast multiple times in the same turn, all figures so affected will act in this special phase, starting with the last figure to have had Fast Act cast upon it, and concluding with the first.")
                    
DefaultSpell.create!(discipline:    "Chronomancer",
                     name:          "Fleet Feet",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "Target receives +2 Move for the rest of the game. Multiple castings of Fleet Feet on the same target have no effect.")

DefaultSpell.create!(discipline:    "Chronomancer",
                     name:          "Petrify",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "The target is temporarily frozen solid and may take no actions on its next activation. After the next activation, the figure may move as normal. The target may attempt to resist this spell by succeeding with a Will roll versus the casting roll.")

DefaultSpell.create!(discipline:    "Chronomancer",
                     name:          "Slow",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "The target must pass a Will roll or be reduced to one action per activation. After each activation, the target may attempt another Will roll versus the original casting roll, in order to shake off the effects of the spell. Otherwise, its effects last until the end of the game. Multiple castings of this spell on the same target have no effect.")

DefaultSpell.create!(discipline:    "Chronomancer",
                     name:          "Time Store",
                     casting_value: 14,
                     range:         "Self Only",
                     description:   "The spellcaster captures a fragment of his own present to save for future use. To cast this spell, the spellcaster must be able to take two actions during the turn. He must spend the first action casting Time Store.
                     If successful, the second action is lost. This spellcaster is now considered to have a stored ‘extra action’ that he may use in a future turn. This action can only be used while the spellcaster is taking his normal actions for the turn, essentially giving him three actions in that turn. 
                     A spellcaster may only ever have one stored action at any time.")

DefaultSpell.create!(discipline:    "Chronomancer",
                     name:          "Time Walk",
                     casting_value: 18,
                     range:         "Self Only",
                     description:   "The spellcaster is allowed to activate, with the usual two actions, for a second time in the turn – during the soldier phase. If a spellcaster fails to cast this spell, he suffers 2 damage in addition to any other damage for failing to cast the spell. A spellcaster cannot cast Time Walk if he is currently using Time Store.")


DefaultSpell.create!(discipline:    "Elementalist",
                     name:          "Call Storm",
                     casting_value: 12,
                     range:         "Area of Effect",
                     description:   "If this spell is successfully cast, all bow and crossbow attacks are at -1 for the rest of the game. This spell may be cast multiple times (and by multiple spellcasters) with each additional casting increasing the penalty by -1,
                     to a maximum of -10.")

DefaultSpell.create!(discipline:    "Elementalist",
                     name:          "Destructive Sphere",
                     casting_value: 12,
                     range:         "Area of Effect",
                     description:   "Every figure within 3” of the spellcaster suffers a +5 attack.")

DefaultSpell.create!(discipline:    "Elementalist",
                     name:          "Elemental Ball",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "The spellcaster chooses an enemy figure within 24” and line of sight and hurls a ball of destructive elemental energy at it. The target, and every figure (including friendly ones) within 1.5” and line of sight of the target, immediately suffers a +5 shooting attack (roll each attack separately). This spell may not target an enemy figure that is even partially obscured by another figure.")

DefaultSpell.create!(discipline:    "Elementalist",
                     name:          "Elemental Bolt",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "The spellcaster may make an immediate +8 shooting attack against any figure in line of sight.")

DefaultSpell.create!(discipline:    "Elementalist",
                     name:          "Elemental Hammer",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "This spell is cast upon a weapon. The next time this weapon causes at least 1 point of damage, it inflicts an additional 5 points of damage.")

DefaultSpell.create!(discipline:    "Elementalist",
                     name:          "Elemental Shield",
                     casting_value: 10,
                     range:         "Self Only",
                     description:   "The spellcaster forms a floating shield to protect himself. This shield absorbs the next 3 points of damage against the spellcaster from any source. Once 3 points have been absorbed the shield vanishes. A spellcaster may only have one Elemental Shield active at any time.")

DefaultSpell.create!(discipline:    "Elementalist",
                     name:          "Scatter Shot",
                     casting_value: 12,
                     range:         "Area of Effect",
                     description:   "The spellcaster may make one +0 attack against every enemy figure (either from an opposing warband or a creature) within 12”. This may include enemy figures in combat, although the normal rules for shooting into combat are followed in this case.")

DefaultSpell.create!(discipline:    "Elementalist",
                     name:          "Wall",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "This spell creates an impenetrable 6”-long, 3”-high wall within 6” of the spellcaster. At the end of each following turn, roll a d20 – on a 17+ the wall vanishes.")

DefaultSpell.create!(discipline:    "Enchanter",
                     name:          "Animate Construct",
                     casting_value: 8,
                     range:         "Out of Game",
                     description:   "It is assumed that the spellcaster has built a construct prior to using this spell to animate it. If the spell is successfully cast, the construct immediately becomes a member of the warband, taking the place of a soldier.
                     A spellcaster may declare that he is attempting to animate a construct of any size (Small, Medium or Large – see Chapter 6: Bestiary), but the larger the construct, the harder it is to animate, so the following modifiers are applied to his roll to cast the spell: Small -0, Medium -3, Large -6.")

DefaultSpell.create!(discipline:    "Enchanter",
                     name:          "Control Construct",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "If successfully cast, the target construct must make an immediate Will roll versus the casting roll. If the roll fails, the spellcaster gains control of the construct for the rest of the game. A spellcaster may only control one construct at a time.")
    
DefaultSpell.create!(discipline:    "Enchanter",
                     name:          "Embed Enchantment",
                     casting_value: 12,
                     range:         "Out of Game",
                     description:   "This spell causes any Enchant Armour or Enchant Weapon spell that is still active at the end of a game, to become permanent, and the weapon or armour in question to become a magic item. Alternatively, a spellcaster may cast either of those spells after a game (even though neither are usually an Out of Game spell), immediately followed by Embed Enchantment. If both spells are successful, the item becomes permanently enchanted.")

DefaultSpell.create!(discipline:    "Enchanter",
                     name:          "Enchant Armour",
                     casting_value: 8,
                     range:         "Line of Sight",
                     description:   "The armour worn by the target now counts as magic armour and grants a +1 to Armour for the rest of the game. Multiple castings of this spell on the same target have no effect.")
   
DefaultSpell.create!(discipline:    "Enchanter",
                     name:          "Enchant Weapon",
                     casting_value: 8,
                     range:         "Line of Sight",
                     description:   "A target weapon is given a temporary magic boost by the spellcaster. Melee weapons affected by this spell count as magic weapons and give their users +1 Fight for the rest of the game. Bows and crossbows targeted by the spell give +1 Shoot instead, but do not count as magic weapons.
                     Multiple castings of this spell on the same weapon have no effect. Alternatively, the spell can be used to enchant one arrow or quarrel. This gives +1 Shoot and counts as a magic weapon, but only for the next shot. 
                     A bow or crossbow boosted by Enchant Weapon may be used to fire arrows or quarrels similarly enchanted, and the bonuses stack.")

DefaultSpell.create!(discipline:    "Enchanter",
                     name:          "Grenade",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "The spellcaster takes an object, commonly a simple rock, imbues it with magic energy and throws it at his target, whereupon it explodes into hundreds of fragments. The caster picks a target point within 12”. Every figure, including allies, within 1.5” of that point immediately suffers a +3 shooting attack.")
 

DefaultSpell.create!(discipline:    "Enchanter",
                     name:          "Strength",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "The target receives +2 Fight for the rest of the game. Multiple Strength spells on the same target have no effect.")
 
DefaultSpell.create!(discipline:    "Enchanter",
                     name:          "Telekenesis",
                     casting_value: 8,
                     range:         "Line of Sight",
                     description:   "The spellcaster may move any currently unclaimed treasure within 24” by up to 6” in any direction. As long as he can maintain line of sight to the treasure, he can move it over any terrain or obstacle. If the treasure moves out of line of sight, it immediately falls straight to the ground.")
 
DefaultSpell.create!(discipline:    "Illusionist",
                     name:          "Beauty",
                     casting_value: 10,
                     range:         "Self Only",
                     description:   "This spell causes all humans (i.e. anything not found in Chapter 6: Bestiary) who look at the spellcaster to see a paragon of beauty. Anyone wishing to attack the spellcaster must first pass a Will roll versus the casting roll. Failing this Will roll does not cause the would-be attacker to lose an action. 
                     Any model magically compelled to fight the target must also pass a Will roll or suffer -1 to its Fight stat.")
 
DefaultSpell.create!(discipline:    "Illusionist",
                     name:          "Fool's Gold",
                     casting_value: 8,
                     range:         "Out of Game",
                     description:   "This spell allows the spellcaster to place one additional treasure token before the start of the game. However, he must also secretly note down which of the treasures he has placed is the Fool’s Gold. When any figure comes into contact with the Fool’s Gold, the treasure token immediately vanishes and is removed from the game.")
                     
DefaultSpell.create!(discipline:    "Illusionist",
                     name:          "Glow",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "A brightly glowing light surrounds the target figure. For the rest of the game, all shooting attacks against this figure are at +3. Multiple Glow spells on the same target have no effect.")

DefaultSpell.create!(discipline:    "Illusionist",
                     name:          "Illusionary Soldier",
                     casting_value: 12,
                     range:         "Out of Game",
                     description:   "Causes an illusionary soldier to join the warband for the next battle. This soldier can be of any type. This soldier cannot pick up treasure, nor can it deal damage. If the soldier ever suffers damage of any type, it is removed. A warband may only have one illusionary soldier at any given time.")

DefaultSpell.create!(discipline:    "Illusionist",
                     name:          "Invisibility",
                     casting_value: 12,
                     range:         "Touch",
                     description:   "The target figure becomes invisible and may not be attacked or targeted by spells (although he may still be affected by area effects, such as the blast radius of a Grenade spell). The effects of this spell last until the target attacks, casts a spell, or picks up an item of treasure. The spell can be cast on a figure already carrying treasure, rendering both invisible.")

DefaultSpell.create!(discipline:    "Illusionist",
                     name:          "Monstrous Form",
                     casting_value: 8,
                     range:         "Self Only",
                     description:   "Any figure wishing to move into contact with the spellcaster must make an immediate Will roll versus the casting roll. If failed, the figure sees a hideous creature instead of the spellcaster and is too scared to attack – he may only make a move that takes him further away. 
                     A spellcaster may not have Beauty and Monstrous Form cast at the same time. Undead, constructs, and demons are immune to Monstrous Form.")
                     
DefaultSpell.create!(discipline:    "Illusionist",
                     name:          "Teleport",
                     casting_value: 10,
                     range:         "Self Only",
                     description:   "The spellcaster immediately moves to any location within line of sight, but may take no other action this turn. This spell may not be used to enter combat.")
                     
DefaultSpell.create!(discipline:    "Illusionist",
                     name:          "Transpose",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "This spell switches the position of two figures on the board. The two figures being transposed must be within 10” of each other and both must be within line of sight of the spellcaster. The spellcaster may cast Transpose to switch himself with another figure. 
                     If he attempts to transpose an enemy figure (either a creature or member of a rival warband), they may each make a Will roll versus the casting roll. If even one succeeds with this Will roll, the spell fails. This spell may target figures in combat.")

DefaultSpell.create!(discipline:    "Necromancer",
                     name:          "Bone Dart",
                     casting_value: 8,
                     range:         "Line of Sight",
                     description:   "This spell fires a small, sharp shard of bone at a target. The spellcaster may make an immediate +5 shooting attack against any figure in line of sight. This does not count as a magic attack.")

DefaultSpell.create!(discipline:    "Necromancer",
                     name:          "Bones of the Earth",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "A skeletal hand reaches out of the ground and grabs the target’s ankle. The target is held fast and may not move. Any magic form of movement will allow the target to escape the hand. Otherwise, the only way to escape the hand is to fight. The hand has Fight +0 and Health 1. If the hand is damaged, it vanishes, and the target is free. This spell may only be cast against a target that is standing on ground level. The maximum range for this spell is 18”.")

DefaultSpell.create!(discipline:    "Necromancer",
                     name:          "Control Undead",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "If successfully cast, the target undead creature must make an immediate Will roll versus the casting roll. If the roll fails, the spellcaster gains control of the undead creature for the rest of the game. A spellcaster may only control one undead creature at a time.")

DefaultSpell.create!(discipline:    "Necromancer",
                     name:          "Raise Zombie",
                     casting_value: 8,
                     range:         "Out of Game OR Touch",
                     description:   "This spell can be used both ‘Out of Game’ and during the game. If successful, the spellcaster adds one zombie to his warband (see Chapter 6: Bestiary). If the spell is cast before the game, the zombie can be deployed normally. If it is cast during a game, the zombie appears in base contact with the spellcaster. 
                     A warband may only have one raised zombie at any one time. If the zombie is killed during a game, Raise Zombie can be cast again to create another. A raised zombie does not count towards the warband size limit and remains with a warband until the end of the game, at which point it crumbles into dust.")

DefaultSpell.create!(discipline:    "Necromancer",
                     name:          "Reveal Death",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "This spell causes the target to see a vision of his own death. The target must make an immediate Will roll versus the casting roll. If the target fails, he loses his next activation.")

DefaultSpell.create!(discipline:    "Necromancer",
                     name:          "Spell Eater",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "This spell cancels the effects of any one spell currently in play, and the spellcaster immediately takes 1 point of damage. It cannot unsummon a creature, but it can cancel the control of a creature.")

DefaultSpell.create!(discipline:    "Necromancer",
                     name:          "Steal Health",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "The target must make an immediate Will roll versus the casting roll. If failed, the target immediately loses 3 Health and the spellcaster regains 3 Health. This may not take the spellcaster above his starting health. This spell has no effect on undead, constructs or demons. 
                     A spellcaster may target a member of his own warband – if he does, however, the target will immediately (and permanently) leave the warband and will move as quickly as possible off the board.")

DefaultSpell.create!(discipline:    "Necromancer",
                     name:          "Strike Dead",
                     casting_value: 18,
                     range:         "Line of Sight",
                     description:   "This spell may target a figure within 8”. The target must make a Will roll versus the casting roll or be immediately reduced to 0 Health. All figures may empower their Will roll to resist this spell, even non-spellcasters. The spellcaster immediately loses 1 Health upon attempting this spell (even if it is cast successfully), plus any additional loss incurred by failure or empowerment.")

DefaultSpell.create!(discipline:    "Sigilist",
                     name:          "Absorb Knowledge",
                     casting_value: 8,
                     range:         "Out of Game",
                     description:   "This spell can only be cast by a wizard, and allows him to absorb the knowledge from a written work without having to read it. A wizard immediately gains 50 experience points for casting this spell to represent the speed with which he can gain knowledge. This spell may only be cast after a game in which the wizard was not reduced to 0 Health.")

DefaultSpell.create!(discipline:    "Sigilist",
                     name:          "Create Grimoire",
                     casting_value: 12,
                     range:         "Out of Game",
                     description:   "This spell allows a spellcaster to create a grimoire containing one spell that he already knows. In order to create a grimoire, the spellcaster must first cast Create Grimoire, and then the spell he wishes to place into the grimoire (even if it is not usually an Out of Game spell). If both are successfully cast, the grimoire is created and the wizard may then sell it.")

DefaultSpell.create!(discipline:    "Sigilist",
                     name:          "Draining Word",
                     casting_value: 14,
                     range:         "Area of Effect",
                     description:   "This spell draws a bright rune of power in the sky. The spellcaster may choose one spell for the Draining Word to affect. All rolls to attempt to cast that particular spell are at -3 for the rest of the game. A spellcaster may only have one Draining Word spell in effect at any given time.")

DefaultSpell.create!(discipline:    "Sigilist",
                     name:          "Explosive Rune",
                     casting_value: 10,
                     range:         "Touch",
                     description:   "The spellcaster draws a bright, glowing rune of power on the ground or a wall. A marker should be placed on the table to represent the rune. If any character or creature that was not part of the spellcaster’s warband at the start of the game comes within 1” of the rune, it explodes, and every figure, friend or foe, within 2” suffers an immediate +5 shooting attack.
                     A spellcaster may have up to three such runes in play at any time. At the end of any turn, he may choose to cancel any or all of his runes. If the spellcaster is removed from play, any runes he placed are also removed.")

DefaultSpell.create!(discipline:    "Sigilist",
                     name:          "Furious Quill",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "The target is attacked by a sharp animated quill. Although the quill does no damage, it is highly irritating and extremely distracting. While under attack, the target suffers -1 Move, -2 Fight, -4 Shoot and -2 to any casting rolls. At the start of the target’s activation each turn, he may make a Will roll versus the casting roll – if successful, the quill is caught and destroyed. Multiple castings of Furious Quill against the same target have no effect. This spell may be cast against a figure in combat with no penalty.")
                     
DefaultSpell.create!(discipline:    "Sigilist",
                     name:          "Power Word",
                     casting_value: 14,
                     range:         "Area of Effect",
                     description:   "This spell draws a bright rune of power in the sky. The spellcaster may pick one spell for the Power Word to affect. All rolls to cast that particular spell are at +3 for every spellcaster for the rest of the game. Each spellcaster may have only one Power Word in effect at any given time.")

DefaultSpell.create!(discipline:    "Sigilist",
                     name:          "Push",
                     casting_value: 8,
                     range:         "Line of Sight",
                     description:   "The target suffers an immediate +10 attack. Instead of taking damage from this attack, the target is moved 1” directly away from the spellcaster for every point of damage he would have taken. If this pushes the target into a piece of terrain or the edge of the board, he stops immediately.
                     Other figures do not stop (or get hit by) a pushed figure – they are assumed to step out of the way. If the target is pushed off a height, he suffers falling damage as normal.")

DefaultSpell.create!(discipline:    "Sigilist",
                     name:          "Write Scroll",
                     casting_value: 12,
                     range:         "Out of Game",
                     description:   "A spellcaster may attempt to cast this spell once after every game. If successful, one scroll is created. The scroll must be of a spell that the spellcaster knows.")

DefaultSpell.create!(discipline:    "Soothsayer",
                     name:          "Awareness",
                     casting_value: 8,
                     range:         "Self Only",
                     description:   "This spell allows the spellcaster to add +1 to his warband’s initiative rolls for the rest of the game. Multiple castings of this spell have no effect, but it may be cast again if the original spellcaster is removed from play.")

DefaultSpell.create!(discipline:    "Soothsayer",
                     name:          "Combat Awareness",
                     casting_value: 12,
                     range:         "Touch",
                     description:   "This spell gives the target a magic insight into the moves his opponent will attempt in a fight. It gives the target a +2 Fight stat for the remainder of the game. Multiple castings of this spell on the same target have no effect.")


DefaultSpell.create!(discipline:    "Soothsayer",
                     name:          "Forget Spell",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "The spellcaster picks one spell known by the target and causes him to temporarily forget how to cast it. The target may make a Will roll to attempt resist the effects of this spell – if unsuccessful, the he may not cast that spell for the remainder of the game.")

DefaultSpell.create!(discipline:    "Soothsayer",
                     name:          "Mind Control",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "This spell only affects soldiers and creatures. If the target fails a Will roll against the casting roll, he temporarily joins the spellcaster’s warband and can be activated as normal during the soldier phase of the spellcaster’s turn. After each activation, the soldier may make a Will roll versus the casting roll to shake off the spell’s effects.
                     A spellcaster may only have one active Mind Control spell at a time.")

DefaultSpell.create!(discipline:    "Soothsayer",
                     name:          "Reveal Invisible",
                     casting_value: 8,
                     range:         "Area of Effect",
                     description:   "This spell cancels all Invisibility spells within 24” of the caster.")

DefaultSpell.create!(discipline:    "Soothsayer",
                     name:          "Reveal Secret",
                     casting_value: 12,
                     range:         "Out of Game",
                     description:   "This spell reveals the location of secret treasure, and may be cast immediately before a game. If successful, the spellcaster’s warband may place one additional treasure token within 6” of their deployment area. Only one extra treasure per warband may be placed in this way each game.")

DefaultSpell.create!(discipline:    "Soothsayer",
                     name:          "Will Power",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "Target gains +3 Will for the rest of the game. Multiple Will Power spells on the same target have no effect.")

DefaultSpell.create!(discipline:    "Soothsayer",
                     name:          "Wizard Eye",
                     casting_value: 8,
                     range:         "Line of Sight",
                     description:   "This spell may be cast on any terrain feature within 12” that has a flat side, such as most ruins. Place a token next to the terrain feature to represent the Wizard Eye. For the rest of the game, the spellcaster may choose to draw line of sight from the Wizard Eye instead of from his figure when casting spells. 
                     The Wizard Eye has 180-degree field of vision. A spellcaster may only maintain one Wizard Eye at a time.")

DefaultSpell.create!(discipline:    "Summoner",
                     name:          "Bind Demon",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "The target demon must make an immediate Will roll versus the casting roll. If it fails, the spellcaster gains control of the demon for the rest of the game. A spellcaster may only have one bound demon at a time.")

DefaultSpell.create!(discipline:    "Summoner",
                     name:          "Imp",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "An imp immediately appears, anywhere within the spellcaster’s line of sight, but no closer than 3” to another figure. The imp follows the normal rules for creatures and will act in the next creature phase. If the same spellcaster casts this spell a second time, the first imp will immediately vanish.")

DefaultSpell.create!(discipline:    "Summoner",
                     name:          "Leap",
                     casting_value: 8,
                     range:         "Line of Sight",
                     description:   "The target makes an immediate 10” move in any direction, including vertically. This move is not hindered by any terrain unless that terrain is over 10” high. Target may take no other action this turn. This spell cannot be used to move a figure into combat.")

DefaultSpell.create!(discipline:    "Summoner",
                     name:          "Plague of Insects",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "insects that irritate and distract. The cloud of insects has a 1” radius centred on, and moving with, the target figure. It affects all figures, including the target figure, fully or partially within this radius. While being pestered by the insects, a figure has -4 Fight and -4 Shoot. 
                     The target figure must pass a Will roll versus the original casting roll at the start of his activation in order to beat off all the insects. Other figures within the radius may simply move away to escape. A figure may only ever be affected by one Plague of Insects, whether as a target or by virtue of being within the 1” radius.")

DefaultSpell.create!(discipline:    "Summoner",
                     name:          "Planar Tear",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "The spellcaster creates a small tear in the fabric of the universe. This rift is painful to humans and creatures, but lethal to demons. The spellcaster selects a target point. All figures within 2” of that point must make a Will roll versus the casting roll or suffer 2 points of damage. Demons that fail the Will roll take damage equal to the casting roll.")

DefaultSpell.create!(discipline:    "Summoner",
                     name:          "Plane Walk",
                     casting_value: 14,
                     range:         "Self Only",
                     description:   "Although the spellcaster remains in the same physical location, he briefly moves between planes. Until his next activiation, he can ignore all terrain when moving, walking through walls and across chasms. He may not be the target of any shooting attacks or spells. 
                     The spellcaster will never be considered in combat during the turn, nor can he be attacked by any figure. However, he also may not pick up treasure, or in any way affect other characters or terrain on the board. If he is carrying treasure, he drops it. It is incredibly draining to move between planes of existence, so if a spellcaster attempts to cast this spell in a second consecutive turn, he suffers a -5 modifier. He suffers a -10 modifier if he attempts it three turns in a row and -15 on the fourth turn and beyond.")

DefaultSpell.create!(discipline:    "Summoner",
                     name:          "Possess",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "This spell may only be cast on a member of the spellcaster’s own warband. The target is possessed by a demon and gains +2 Fight, +2 Armour, and -2 Will for the remainder of the battle and counts as a demon for all intents and purposes (e.g. Banish, Bind Demon). If removed from the game for any reason (such as being hit by a Banish spell), check for the character’s survival as normal. A spellcaster may only have one Possess spell active at a time.")

DefaultSpell.create!(discipline:    "Summoner",
                     name:          "Summon Demon",
                     casting_value: 12,
                     range:         "Touch",
                     description:   "If successfully cast, a demon is immediately placed on the table within 1” of the spellcaster. It may not be placed straight into combat. The demon is treated as though it is already subject to a Bind Demon spell. A spellcaster may only have one bound demon at a time. 
                     The type of demon summoned depends on the amount by which the spellcaster succeeded on his casting roll: 1–5 Imp, 6–12 Minor Demon, 13+ Major Demon (see Chapter 6: Bestiary). If a spellcaster rolls a 1 while attempting to cast this spell, a demon is placed on the table and immediately attacks the summoner.
                     The type of demon is determined using the same chart as above, but using the amount by which the casting roll was failed.")

DefaultSpell.create!(discipline:    "Thaumaturge",
                     name:          "Banish",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "If successfully cast, all demons within line of sight of the spellcaster must pass an immediate Will roll versus the casting roll or be removed from the game.")

DefaultSpell.create!(discipline:    "Thaumaturge",
                     name:          "Blinding Light",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "The target must make an immediate Will roll versus the casting roll. If he fails, he may not attack, shoot, or cast Line of Sight spells. His Fight stat is reduced to +0 and Move to 1. At the start of each turn, the figure may attempt to break the spell by making another Will roll against the same target, otherwise the effects last until the end of the game.")

DefaultSpell.create!(discipline:    "Thaumaturge",
                     name:          "Circle of Protection",
                     casting_value: 12,
                     range:         "Touch",
                     description:   "Creates a circle with a 3” diameter that no demon can enter or pass through. This spell has no effect on a possessed individual. A spellcaster may only have one active circle of protection at a time, but he does not have to remain within it.")

DefaultSpell.create!(discipline:    "Thaumaturge",
                     name:          "Dispel",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "Immediately cancels the ongoing effect of any one spell. It cannot unsummon a creature, but it can cancel the control of a creature.")

DefaultSpell.create!(discipline:    "Thaumaturge",
                     name:          "Heal",
                     casting_value: 8,
                     range:         "Touch",
                     description:   "This spell restores 5 points of Health to the target model. This spell cannot take a model above its starting health.")

DefaultSpell.create!(discipline:    "Thaumaturge",
                     name:          "Miraculous Cure",
                     casting_value: 12,
                     range:         "Out of Game",
                     description:   "This spell removes all of the effects of one type of Permanent Injury. For example, a wizard suffering from Lost Fingers regrows all his missing digits, regardless of how many times he has suffered that particular injury.")

DefaultSpell.create!(discipline:    "Thaumaturge",
                     name:          "Restore Life",
                     casting_value: 20,
                     range:         "Out of Game",
                     description:   "This spell can only be cast by a wizard. A wizard may cast this spell immediately after a game in which a member of his warband has died. If successful, that figure is brought back to life, and may return to action in the very next game.")

DefaultSpell.create!(discipline:    "Thaumaturge",
                     name:          "Shield",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "The target receives +2 Armour for the rest of the game. Multiple Shield spells on the same target have no effect.")

DefaultSpell.create!(discipline:    "Witch",
                     name:          "Animal Companion",
                     casting_value: 8,
                     range:         "Out of Game",
                     description:   "The spellcaster summons an animal companion of his choice from the following options to join his warband: Bear, Wolf, Snow Leopard, Ice Toad (see Chapter 6: Bestiary). The animal takes the place of a soldier for the purposes of maximum warband size. Animal companions may not collect treasure or carry items. 
                     They may be controlled by another spellcaster using the Control Animal spell, although they will re-join their original warband after the game. Animal companions are more strong-willed than wild examples of their species – give them +2 to the Will stat found in the appropriate Bestiary entry. A spellcaster may only have one animal companion at any time.")

DefaultSpell.create!(discipline:    "Witch",
                     name:          "Brew Potion",
                     casting_value: 12,
                     range:         "Out of Game",
                     description:   "A spellcaster may attempt to cast this spell before the game. If successful, he gains one potion of any type (except Elixir of Life). This potion may be given to any member of his warband.")
                     
DefaultSpell.create!(discipline:    "Witch",
                     name:          "Control Animal",
                     casting_value: 12,
                     range:         "Line of Sight",
                     description:   "If successfully cast, the target animal must make an immediate Will roll versus the casting roll. If the roll fails, the spellcaster gains control of the animal for the rest of the game. A spellcaster can only control one animal at a time.")

DefaultSpell.create!(discipline:    "Witch",
                     name:          "Curse",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "The target must pass a Will roll versus the casting roll or suffer -1 to its Fight, Shoot, and Will stats for the rest of the game. This spell may be cast on the same target up to five times, for a maximum of -5 to each of the three stats.")

DefaultSpell.create!(discipline:    "Witch",
                     name:          "Familiar",
                     casting_value: 8,
                     range:         "Out of Game",
                     description:   "A spellcaster may attempt to cast this spell before any game. If successful, he gains a familiar in the form of a small creature of his choosing. A spellcaster with a familiar gains +2 Health (write as a split stat). If the spellcaster is ever reduced to his last point of health, the familiar is destroyed. 
                     At the start of the next game, the spellcaster will revert to his normal health, unless another Familiar spell is successfully cast. This additional health may take a spellcaster over his usual maximum for the stat.")

DefaultSpell.create!(discipline:    "Witch",
                     name:          "Fog",
                     casting_value: 8,
                     range:         "Line of Sight",
                     description:   "A line of fog, 6” long, 3” high and 1” thick settles across the battlefield within line of sight of the caster (use cotton or paper to mark the patch of fog). Figures can move through the fog with no difficulty, but no-one may draw line of sight through it. At the start of each new turn, roll a d20. On a result of 19 or 20 the fog dissipates and is removed from the table.")

DefaultSpell.create!(discipline:    "Witch",
                     name:          "Mud",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "All ground within a 3” radius of a target point becomes rough ground for the rest of the game.")

DefaultSpell.create!(discipline:    "Witch",
                     name:          "Poison Dart",
                     casting_value: 10,
                     range:         "Line of Sight",
                     description:   "The spellcaster flings a small dart coated in a potent poison. The spellcaster makes an immediate +5 shooting attack against any figure in line of sight. If the attack beats the target’s Armour it causes no damage, but he loses one of his two standard actions per activation for the rest of the game, or until healed by either a Heal spell or a Healing Potion. 
                     The remaining action does not have to be the otherwise compulsory movement. Multiple Poison Darts against the same figure have no effect.")

