class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.text :recipe_notes

      t.timestamps
    end
  end
end
