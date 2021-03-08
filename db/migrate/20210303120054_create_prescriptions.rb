class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.integer :presid
      t.integer :pharmacist_id
      t.string :patient_name
      t.string :drug_name
      t.string :dosage
      t.integer :quantity
      t.timestamp :deliverdate
      t.boolean :delivered

      t.timestamps
    end
  end
end
