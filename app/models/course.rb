class Course < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  has_many :course_subjects, dependent: :destroy
  has_many :users
  has_many :subjects, through: :course_subjects
end
