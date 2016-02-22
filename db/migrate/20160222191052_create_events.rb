class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :location
      t.string :venue

      t.timestamps null: false
    end
  end
end
