class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, presence: true,  allow_nil: false
  validates :cocktail_id, uniqueness: { scope: :ingredient_id}
end
