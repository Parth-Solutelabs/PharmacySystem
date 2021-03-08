json.extract! prescription, :id, :presid, :pharmacist_id, :patient_name, :drug_name, :dosage, :quantity, :deliverdate, :delivered, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
