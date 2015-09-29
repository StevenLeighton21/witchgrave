class CreateFrostGraveParticipants < ActiveRecord::Migration
  def change
    create_table :frost_grave_participants do |t|
      t.references :user, index: true, foreign_key: true
      t.belongs_to :campaigns, index: true, foreign_key: true
      t.string :name
      t.string :wizard_name
      t.string :wizard_weapon
      t.text   :wizard_spells
      t.string :apprentice_name
      t.string :apprentice_weapon
      t.string :warband_member_1
      t.string :warband_member_2
      t.string :warband_member_3
      t.string :warband_member_4
      t.string :warband_member_5
      t.string :warband_member_6
      t.string :warband_member_7
      t.string :warband_member_8
      t.timestamps null: false
    end
    add_index :frost_grave_participants, [:user_id, :campaigns_id]
  end
end
