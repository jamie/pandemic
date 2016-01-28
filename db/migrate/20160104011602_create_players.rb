class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.integer :game_id
      t.integer :city_id
      t.integer :role_id
      t.string :card_ids

      t.timestamps
    end
  end
end
