class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipecomments
  has_one_attached :image

end
