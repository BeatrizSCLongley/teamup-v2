class Solution < ApplicationRecord
  has_many :contacts
  # Do I need to add "General" at some point?
  validates :name, inclusion: { in: ["neuro-selfie™", "teamup∞™ 180°", "teamup∞™ 360°", "teamup∞™ for teams", "Workshop series"] }
end
