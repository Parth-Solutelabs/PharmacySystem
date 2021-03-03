class RemovePharmacistIdFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :prescriptions, :pharmacist_id
  end
end
