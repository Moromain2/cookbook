class Step < ApplicationRecord
  belongs_to :recipe

  validates :step_description, presence: true, length: { minimum: 10, maximum: 400 }
end
