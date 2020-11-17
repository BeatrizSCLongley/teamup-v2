class Solution < ApplicationRecord
  has_one_attached :photo
  has_many :contacts
  validates :name, inclusion: { in: ['General', 'neuro-selfie™', 'teamup∞™ 180°', 'teamup∞™ 360°', 'teamup∞™ Team Effectiveness', 'Team effectiveness workshop series'] }
end
