json.extract! schedule, :id, :title, :start_time, :end_time, :trainer_id, :course_id, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
