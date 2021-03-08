class Prescription < ApplicationRecord
    validates :patient_name, presence: true
    validates :drug_name, presence: true
    validates :dosage, presence: true
    validates :quantity, presence: true, length: {maximum: 3}, numericality: {only_integer: true}
    validates :deliverdate, presence: true

    belongs_to :user
    has_many :users
    has_many :users_prescriptions
end


