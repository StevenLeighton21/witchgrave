class CreateInjuries < ActiveRecord::Migration
  def change
    create_table :injuries do |t|
      t.references :frost_grave_participant, index: true, foreign_key: true
      t.string     :name
      t.integer    :value
      t.string     :stat_modified
      t.string     :caster_affected
      t.timestamps null: false
    end
  end
end
