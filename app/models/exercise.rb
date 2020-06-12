class Exercise < ApplicationRecord
  validates :answer, :question, :order, presence: true
  belongs_to :content
end
