class Review < ApplicationRecord
  validates :description, presence: true
  belongs_to :user
  belongs_to :subject
end
