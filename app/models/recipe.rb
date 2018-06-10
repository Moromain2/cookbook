class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  accepts_nested_attributes_for :ingredients,
                                                      reject_if: proc { |attributes| attributes ['ingredient_name'].blank? },
                                                      allow_destroy: true

  has_many :steps
  accepts_nested_attributes_for :steps,
                                                      reject_if: proc { |attributes| attributes ['step_description'].blank? },
                                                      allow_destroy: true

  has_one :baking
  accepts_nested_attributes_for :baking

  validates :recipe_name, presence: true, length: { minimum: 3, maximum: 150 }
end
