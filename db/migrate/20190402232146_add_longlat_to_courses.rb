class AddLonglatToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :latitude, :decimal
    add_column :courses, :longitude, :decimal
  end
end
