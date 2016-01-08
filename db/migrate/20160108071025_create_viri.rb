class CreateViri < ActiveRecord::Migration[5.0]
  def change
    create_table :viri do |t|
      t.integer :game_id
      t.integer :city_id
      t.string :color

      t.timestamps
    end
  end
end
