class Procedure < ApplicationRecord
  belongs_to :recipe, optional: true
  mount_uploader :image, ImageUploader

  validates :description, presence: true
  validates :image, presence: true
end
