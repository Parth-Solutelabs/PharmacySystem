class AddPharmacistIdToPrescriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :prescriptions, :user_id, :integer
  end
end
