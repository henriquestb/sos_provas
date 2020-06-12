class AddPdfToContents < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :pdf, :string
  end
end
