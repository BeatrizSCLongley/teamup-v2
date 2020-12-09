class Associate < ApplicationRecord
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # validates :name, :bio, :address, :latitude, :longitude, :image, presence: true
end
