class WizardStats < ActiveRecord::Migration
  def change
      add_column :frost_grave_participants, :wizard_move, :integer
      add_column :frost_grave_participants, :wizard_fight, :string
      add_column :frost_grave_participants, :wizard_shoot, :string
      add_column :frost_grave_participants, :wizard_armour, :integer
      add_column :frost_grave_participants, :wizard_will, :string
      add_column :frost_grave_participants, :wizard_health, :integer
      add_column :frost_grave_participants, :wizard_notes, :text
      add_column :frost_grave_participants, :wizard_level, :integer 

      add_column :frost_grave_participants, :apprentice_move, :integer
      add_column :frost_grave_participants, :apprentice_fight, :string
      add_column :frost_grave_participants, :apprentice_shoot, :string
      add_column :frost_grave_participants, :apprentice_armour, :integer
      add_column :frost_grave_participants, :apprentice_will, :string
      add_column :frost_grave_participants, :apprentice_health, :integer
      add_column :frost_grave_participants, :apprentice_notes, :text
  end
end
