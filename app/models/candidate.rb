class Candidate < ApplicationRecord
  validates :name, presence: true

  has_one_attached :resume
end
