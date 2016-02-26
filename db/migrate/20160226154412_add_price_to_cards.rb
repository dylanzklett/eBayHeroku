class AddPriceToCards < ActiveRecord::Migration
  def change
  	add_column :cards, :price, :decimal, :precision =>8
  end
end
