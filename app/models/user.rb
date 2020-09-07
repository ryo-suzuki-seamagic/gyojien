class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :fishcatchs
  has_many :fishcathccomenst
  has_many :recipes
  has_many :recipecomments
  has_many :colimus


  with_options presence: true do
    validates :nickname
    validates :email, uniqueness: true
    validates :location
    validates :first_name
    validates :last_name
    validates :password, format:{ with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/ },
                         confirmation: true
  end
end
