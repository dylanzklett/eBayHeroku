class RemovePriceFromCards < ActiveRecord::Migration
  def change
  	remove_column :cards, :price, :decimal
  end
end
