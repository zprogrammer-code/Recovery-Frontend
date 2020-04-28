class CreateRests < ActiveRecord::Migration[6.0]
  def change
    create_table :rests do |t|
      t.string :name
      t.string :type
      t.integer :capacity
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
