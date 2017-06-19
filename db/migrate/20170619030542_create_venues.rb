class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :location, null: false

      t.timestamps
    end
  end
end
