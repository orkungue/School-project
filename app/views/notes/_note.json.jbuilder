json.extract! note, :id, :user_id, :note_content_student, :note_content_teacher, :created_at, :updated_at
json.url note_url(note, format: :json)
