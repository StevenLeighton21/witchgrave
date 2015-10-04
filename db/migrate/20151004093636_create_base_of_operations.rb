class CreateBaseOfOperations < ActiveRecord::Migration
  def change
    create_table :base_of_operations do |t|
      t.references :frost_grave_participant, index: true, foreign_key: true
      t.string     :location
      t.text	   :effects
      t.timestamps null: false
    end
    
    add_index :base_of_operations, [:created_at]
  end
end
