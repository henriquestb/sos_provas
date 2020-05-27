class Exercise < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  belongs_to :content
end
