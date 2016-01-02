class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :x
      t.integer :y
      t.string :color
      t.string :connections

      t.timestamps
    end
  end
end
