class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.references :subject, null: false, foreign_key: true
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
