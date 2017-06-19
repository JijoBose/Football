class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.integer :match_id, null: false
      t.integer :player_id, null: false
      t.boolean :captain, null: false, default: false
      t.boolean :goalkeeper, null: false, default: false

      t.timestamps
    end
  end
end
