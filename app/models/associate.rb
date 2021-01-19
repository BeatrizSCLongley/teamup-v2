class Associate < ApplicationRecord
  has_one_attached :image
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  # validates :name, :bio, :location, :latitude, :longitude, :image, presence: true
end
