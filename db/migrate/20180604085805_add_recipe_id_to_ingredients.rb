class AddRecipeIdToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :recipe_id, :string
  end
end
