class AddPhoneToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :phone, :string
    add_column :users, :university, :string
    add_reference :users, :course, null: false, foreign_key: true
    add_column :users, :name, :string
  end
end
