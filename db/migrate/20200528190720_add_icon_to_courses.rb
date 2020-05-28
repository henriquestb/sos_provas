class AddIconToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :icon, :string
  end
end
