class CreateTournamentParticipants < ActiveRecord::Migration
  def change
    create_table :tournament_participants do |t|
      t.references :user, index: true, foreign_key: true
	  t.references :tournament, index: true, foreign_key: true
	  t.string :name
	  t.string :team_name
	  t.integer :total_strength_rating
	  t.integer :final_standing
	  t.integer :wins
	  t.integer :losses
      t.timestamps null: false
    end
  end
end
