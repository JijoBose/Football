class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.integer :match_id, null: false
      t.integer :player_id, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
