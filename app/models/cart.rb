class Cart < ApplicationRecord
  has_many :cart_subjects, dependent: :nullify
  belongs_to :user
  has_many :subjects, through: :cart_subjects
end
