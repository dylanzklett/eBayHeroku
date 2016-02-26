class AddFoilAndNotesToCards < ActiveRecord::Migration
  def change
  	add_column :cards, :foil, :boolean
  	add_column :cards, :notes, :string
  end
end
