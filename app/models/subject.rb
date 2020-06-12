class Subject < ApplicationRecord
  validates :name,:price,:description, presence: true
  has_many :cart_subjects, dependent: :destroy
  has_many :bought_subjects, dependent: :destroy
  has_many :course_subjects, dependent: :destroy
  has_many :contents, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users, through: :bought_subjects
  has_many :courses, through: :course_subjects
  has_one_attached :photo
end
