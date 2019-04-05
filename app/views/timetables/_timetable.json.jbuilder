json.extract! timetable, :id, :class_id, :timetable_content, :created_at, :updated_at
json.url timetable_url(timetable, format: :json)
