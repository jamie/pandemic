class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.integer :x
      t.integer :y
      t.integer :role_id

      t.timestamps
    end
  end
end
