class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.references :content, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
