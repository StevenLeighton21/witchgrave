class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.references :frost_grave_participant, index: true, foreign_key: true

      t.string  :discipline
      t.string  :name
      t.integer :casting_value
      t.string  :range
      t.text    :description
      t.timestamps null: false
    end
    add_index :spells, [:frost_grave_participant_id, :created_at]

    add_column :frost_grave_participants, :wizard_discipline, :string
    remove_column :frost_grave_participants, :wizard_spells
  end
end
