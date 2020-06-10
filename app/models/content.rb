class Content < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  has_many :comments, dependent: :destroy
  has_many :exercises, dependent: :destroy
  belongs_to :subject
  has_one_attached :photo
end
