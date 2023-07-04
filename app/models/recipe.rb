class Recipe < ApplicationRecord

  has_and_belongs_to_many :ingredients

  validates :title, presence: true
  validates :description, presence: true
end
