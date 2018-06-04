class Recipe < ApplicationRecord
  has_many :ingredients
  accepts_nested_attributes_for :ingredients,
                                                      reject_if: proc { |attributes| attributes ['ingredient_name'].blank? },
                                                      allow_destroy: true

  has_many :steps
  accepts_nested_attributes_for :steps,
                                                      reject_if: proc { |attributes| attributes ['step_description'].blank? },
                                                      allow_destroy: true

  has_many :bakings
  accepts_nested_attributes_for :bakings,
                                                      reject_if: proc { |attributes| attributes ['baking_type'].blank? },
                                                      allow_destroy: true

  validates :recipe_name, presence: true
end
