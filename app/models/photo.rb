class Photo < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :genius
end
