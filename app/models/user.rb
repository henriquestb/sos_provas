class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :course
  has_one :cart
  has_many :bought_subjects, dependent: :destroy
  has_many :subjects, through: :bought_subjects
  has_many :cart_subjects, through: :carts
  has_many :reviews, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :orders
end
