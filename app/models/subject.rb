class Subject < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  has_many :cart_subjects, dependent: :destroy
  has_many :bought_subjects, dependent: :destroy
  has_many :exercises, dependent: :destroy
  has_many :course_subjects, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users, through: :bought_subjects
  has_many :courses, through: :course_subjects
end