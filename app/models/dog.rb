class Dog < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  self.inheritance_column = :_type_disabled # この行を追加
end
