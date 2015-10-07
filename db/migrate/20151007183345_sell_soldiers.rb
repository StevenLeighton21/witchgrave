class SellSoldiers < ActiveRecord::Migration
  def change
  	add_column :fgp_soldiers, :sale_price, :integer
  end
end
