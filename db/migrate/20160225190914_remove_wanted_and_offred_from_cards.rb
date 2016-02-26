class RemoveWantedAndOffredFromCards < ActiveRecord::Migration
  def change
    remove_column :cards, :wanted, :boolean
    remove_column :cards, :offered, :boolean
  end
end
