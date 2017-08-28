class Recipe < ApplicationRecord
  belongs_to :user
  has_many :procedures, dependent: :destroy
  has_many :raw_materials, dependent: :destroy

  validates :title, presence: true
  validates :image, presence: true
  validates :description, presence: true
  accepts_nested_attributes_for :procedures
  accepts_nested_attributes_for :raw_materials
  mount_uploader :image, ImageUploader
end
