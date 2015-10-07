class FgpSoldierNameSpaceErrorFix < ActiveRecord::Migration
  def change
  	add_column :fgp_soldiers, :type, :string
  	remove_column :fgp_soldiers, :class
  end
end
