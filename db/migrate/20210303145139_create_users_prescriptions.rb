class CreateUsersPrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :users_prescriptions do |t|

      t.timestamps
    end
  end
end
