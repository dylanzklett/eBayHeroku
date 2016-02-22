class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :set
      t.decimal :price, :precision =>8, :scale =>2
      t.boolean :wanted
      t.boolean :offered
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
