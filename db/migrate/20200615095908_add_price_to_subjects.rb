class AddPriceToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_monetize :subjects, :price, currency: { present: false }
  end
end
