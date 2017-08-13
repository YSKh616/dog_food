class Recipe < ApplicationRecord
  belongs_to :user
  has_many :procedures
  has_many :raw_materials

  accepts_nested_attributes_for :procedures
  accepts_nested_attributes_for :raw_materials
  mount_uploader :image, ImageUploader
end
