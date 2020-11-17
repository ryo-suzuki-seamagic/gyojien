class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :location
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :fishcatchs
  has_many :fishcathccomenst
  has_many :recipes
  has_many :recipecomments
  has_many :colimus
  has_one_attached :image
 


  # with_options numericality: { other_than: 1, message: 'Select' } do
  #   validates :location
  # end

  with_options presence: true do
    validates :nickname
    validates :email, uniqueness: true
    validates :first_name
    validates :last_name
    validates :password, format:{ with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/ },
               confirmation: true
  end
end
