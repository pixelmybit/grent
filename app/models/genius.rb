class Genius < ApplicationRecord
  validates :name, presence: true
  validates :cost, presence: true
  validates :year, presence: true
  belongs_to :user
  has_many :lectures
  has_many :photos
end
