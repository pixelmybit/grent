class Genius < ApplicationRecord
  validates :name, presence: true
  validates :cost, presence: true
  validates :year, presence: true
  belongs_to :user
  has_many :lectures, dependent: :destroy
  has_many :photos, dependent: :destroy

  scope :with_photo, -> { joins(:photos).where("photos.genius_id IS NOT NULL").distinct }
end
