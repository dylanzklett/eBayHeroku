class AddStatusToCards < ActiveRecord::Migration
  def change
  	add_column :cards, :status, :boolean
  end
end
