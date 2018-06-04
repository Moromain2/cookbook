class AddRecipeIdToBakings < ActiveRecord::Migration[5.1]
  def change
    add_column :bakings, :recipe_id, :string
  end
end
