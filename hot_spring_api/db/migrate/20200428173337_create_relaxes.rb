class CreateRelaxes < ActiveRecord::Migration[6.0]
  def change
    create_table :relaxes do |t|
      t.string :name
      t.integer :capacity
      t.string :vibe
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
