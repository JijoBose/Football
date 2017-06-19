class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.string :title, null: false
      t.integer :team1_id, null: false
      t.integer :team2_id, null: false
      t.integer :venue_id, null: false
      t.date :schedule, null: false

      t.timestamps
    end
  end
end
