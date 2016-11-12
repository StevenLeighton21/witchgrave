class ChangeTournament < ActiveRecord::Migration
  def change
  	drop_table :tournaments

  	create_table :tournaments do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.integer :num_rounds

      t.timestamps null: false
    end
    add_index :tournaments, [:user_id, :created_at]
  end
end
