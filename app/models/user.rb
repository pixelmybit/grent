class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true
  has_many :genius
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
