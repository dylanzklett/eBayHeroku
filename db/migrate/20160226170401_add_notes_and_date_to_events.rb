class AddNotesAndDateToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :date, :string
  	add_column :events, :notes, :text
  end
end
