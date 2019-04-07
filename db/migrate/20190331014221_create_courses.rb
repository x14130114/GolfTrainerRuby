class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :location
      t.integer :holes
      t.integer :par

      t.timestamps
    end
  end
end
