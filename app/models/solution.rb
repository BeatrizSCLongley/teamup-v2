class Solution < ApplicationRecord
  has_many :contacts
  validates :name, inclusion: { in: ['General', 'neuro-selfie™', 'teamup∞™ 180°', 'teamup∞™ 360°', 'teamup∞™ for teams', 'Team effectiveness workshop series'] }
end
