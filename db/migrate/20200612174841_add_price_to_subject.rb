class AddPriceToSubject < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :price, :integer
  end
end
