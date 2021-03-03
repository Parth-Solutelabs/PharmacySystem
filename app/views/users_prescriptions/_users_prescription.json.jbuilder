json.extract! users_prescription, :id, :created_at, :updated_at
json.url users_prescription_url(users_prescription, format: :json)
