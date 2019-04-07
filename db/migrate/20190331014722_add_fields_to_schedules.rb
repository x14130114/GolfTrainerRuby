class AddFieldsToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :course_id, :integer
    add_index :schedules, :course_id
  end
end
