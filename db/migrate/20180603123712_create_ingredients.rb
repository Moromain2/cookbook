class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.integer :quantity
      t.string :measuring
      t.string :other
      t.boolean :optional

      t.timestamps
    end
  end
end
