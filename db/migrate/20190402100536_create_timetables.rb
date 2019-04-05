class CreateTimetables < ActiveRecord::Migration[5.2]
  def change
    create_table :timetables do |t|
      t.integer :class_id
      t.longblob :timetable_content

      t.timestamps
    end
  end
end
