class RefineEventsParameters < ActiveRecord::Migration
  def change
  	remove_column :events, :location, :string
  	add_column :events, :name, :string
  	add_column :events, :format, :string
  end
end
