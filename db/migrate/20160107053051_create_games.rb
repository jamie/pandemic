class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :current_player_id
      t.integer :current_action

      t.timestamps
    end
  end
end
