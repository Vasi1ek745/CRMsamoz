class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :subject
      t.integer :class_in_school
      t.string :location
      t.integer :pay_by_hour
      t.string :other
      

      t.timestamps
    end
  end
end
