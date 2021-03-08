json.extract! user_prescription, :id, :created_at, :updated_at
json.url user_prescription_url(user_prescription, format: :json)
