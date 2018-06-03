class CreateBakings < ActiveRecord::Migration[5.1]
  def change
    create_table :bakings do |t|
      t.boolean :no_baking
      t.string :baking_type
      t.integer :heat
      t.string :unit
      t.integer :duration
      t.text :baking_notes

      t.timestamps
    end
  end
end
