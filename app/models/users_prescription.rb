class UsersPrescription < ApplicationRecord
    belongs_to :user
    belongs_to :prescription
end
