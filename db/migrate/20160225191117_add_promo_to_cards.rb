class AddPromoToCards < ActiveRecord::Migration
  def change
  	add_column :cards, :promo, :boolean
  end
end
