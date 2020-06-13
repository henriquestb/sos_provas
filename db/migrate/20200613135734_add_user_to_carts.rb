class AddUserToCarts < ActiveRecord::Migration[6.0]
  def change
    add_reference :carts, :user, null: false, foreign_key: true
    add_column :carts, :status, :boolean
  end
end
