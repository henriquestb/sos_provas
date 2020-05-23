class Exercise < ApplicationRecord
  validates :name, presence: true
  validates :content, presence: true
  belongs_to :subject
end
