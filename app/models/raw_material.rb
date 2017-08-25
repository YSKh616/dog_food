class RawMaterial < ApplicationRecord
  belongs_to :recipe, optional: true
  validates :material, presence: true
end
