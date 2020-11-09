class Contact < ApplicationRecord
  belongs_to :solution
  validates :name, :email, presence: true
  # No need for the topic as it's defined by the solution_id
  # validates :topic, inclusion: { in: ["General", "neuro-selfie™", "teamup∞™ 180°", "teamup∞™ 360°", "teamup∞™ for teams", "Workshop series"], message: "Please choose one of the options given" }
end
