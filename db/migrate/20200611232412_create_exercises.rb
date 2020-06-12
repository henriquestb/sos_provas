class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.text :answer
      t.text :question
      t.integer :order
      t.references :content, null: false, foreign_key: true

      t.timestamps
    end
  end
end
