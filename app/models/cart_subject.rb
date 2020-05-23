class CartSubject < ApplicationRecord
  belongs_to :cart
  belongs_to :subject
end
