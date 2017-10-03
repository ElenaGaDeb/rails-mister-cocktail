class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, uniqueness: true
  validates :name, presence: true
  #validates :photo, presence: true
  #validates :ingredient, uniqueness: { scope: :cocktail}
  mount_uploader :photo, PhotoUploader

end
