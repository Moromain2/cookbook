class Baking < ApplicationRecord
  belongs_to :recipe

  validates :baking_type, presence: true, length: { maximum: 50 }
end
