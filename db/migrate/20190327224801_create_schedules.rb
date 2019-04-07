class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.integer :trainer_id

      t.timestamps
    end
    add_index :schedules, :trainer_id
  end
end
