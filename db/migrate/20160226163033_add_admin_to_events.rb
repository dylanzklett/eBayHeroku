class AddAdminToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :admin, :boolean
  end
end
