class Addtable < ActiveRecord::Migration[6.1]
  def change
    add_reference :users_prescriptions, :user
    add_reference :users_prescriptions, :prescription

  end
end
