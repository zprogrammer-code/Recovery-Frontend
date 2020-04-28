class CreateRecoveries < ActiveRecord::Migration[6.0]
  def change
    create_table :recoveries do |t|
      t.string :activity
      t.interger :activity_level
      t.float :cost
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
