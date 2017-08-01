class Recipe < ApplicationRecord
  belongs_to :user
  has_many :procedures
  has_many :raw_materials
end
