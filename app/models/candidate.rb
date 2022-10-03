class Candidate < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true

  has_one_attached :resume
end
