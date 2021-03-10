class Contact < ApplicationRecord
  belongs_to :solution
  validates :name, :email, presence: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: 'please enter a valid email address' }
  validates :terms, acceptance: true
end
