class Soldertype < ActiveRecord::Migration
  def change
  	remove_column :soldiers, :type
  	add_column    :soldiers, :class_name, :string
  end
end
