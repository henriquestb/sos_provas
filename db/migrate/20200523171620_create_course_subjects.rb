class CreateCourseSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :course_subjects do |t|
      t.references :course, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
