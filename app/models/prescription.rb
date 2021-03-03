class Prescription < ApplicationRecord
    validates :patient_name, presence: true
    validates :drug_name, presence: true
    validates :dosage, presence: true
    validates :quantity, presence: true, length: {is: 3}, numericality: {only_integer: true}
    validates :deliverdate, presence: true
    validates :delivered, presence: true
    belongs_to : user
end