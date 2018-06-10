class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :ingredient_name, presence: true, length: { maximum: 80 }
end
