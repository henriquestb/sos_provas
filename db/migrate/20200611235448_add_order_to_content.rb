class AddOrderToContent < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :order, :integer
  end
end
