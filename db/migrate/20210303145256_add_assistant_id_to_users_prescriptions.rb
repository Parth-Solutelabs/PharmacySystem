class AddAssistantIdToUsersPrescriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :users_prescriptions, :user_id, :integer
    
  end
end
