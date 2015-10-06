class ApprenticeHired < ActiveRecord::Migration
  def change
  	add_column :frost_grave_participants, :apprentice_hired, :boolean
  end
end
