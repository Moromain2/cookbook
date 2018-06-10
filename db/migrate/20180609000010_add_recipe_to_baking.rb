class AddRecipeToBaking < ActiveRecord::Migration[5.1]
  def change
    add_reference :bakings, :recipe, foreign_key: true
  end
end
