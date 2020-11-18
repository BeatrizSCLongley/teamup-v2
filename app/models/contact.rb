class Contact < ApplicationRecord
  belongs_to :solution
  validates :name, :email, presence: true
end
