class Contact < ApplicationRecord
  has_one :solution
  validates :name, :email, presence: true
  validates :topic, inclusion: { in: ["General", "neuro-selfie™", "teamup∞™ 180°", "teamup∞™ 360°", "teamup∞™ for teams", "Workshop series"], message: "Please choose one of the options given" }
end
