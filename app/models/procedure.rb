class Procedure < ApplicationRecord
  belongs_to :recipe, optional: true
end
