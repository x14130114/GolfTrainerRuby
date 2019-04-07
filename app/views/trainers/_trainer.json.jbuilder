json.extract! trainer, :id, :photo, :first_name, :last_name, :phone, :bio, :experience, :created_at, :updated_at
json.url trainer_url(trainer, format: :json)
