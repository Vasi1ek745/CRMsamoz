class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.date :date
      t.string :time_lesson
      t.string :location
      t.string :subject
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
