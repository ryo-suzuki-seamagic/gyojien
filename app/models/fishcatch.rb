class Fishcatch < ApplicationRecord
  belongs_to :user
  has_many :fishcatchcomments
  has_one_attached :image


end
