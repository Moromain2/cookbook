class Baking < ApplicationRecord
  belongs_to :recipe

  validates :baking_type, presence: true, length: { maximum: 50 }

  BAKIING_TYPE_LIST = ["Oven", "Pan", "Saucepan", "Pot", "Wok", "Pressure Cooker", "Plancha", "BBQ", "Microwave"]
  HEAT_UNIT_LIST = ["C°", "F°", "Theromostat"]
end
