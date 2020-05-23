class CreateCartSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_subjects do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
