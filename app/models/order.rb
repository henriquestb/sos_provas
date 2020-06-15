class Order < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  monetize :amount_cents
end
