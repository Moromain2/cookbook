class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :ingredient_name, presence: true, length: { maximum: 80 }

  MEASURING_LIST = ["Grams", "Kilograms", "Once", "Pounds", "Centiliters", "Liter", "Spoon", "Handfull", "Tea Cup", "Items"]
end
