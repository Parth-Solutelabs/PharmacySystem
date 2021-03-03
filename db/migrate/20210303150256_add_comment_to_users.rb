class AddCommentToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users_prescriptions, :comment, :text
    add_foreign_key :users_prescriptions, :prescription  
    add_foreign_key :users_prescriptions, :users 
  end
end
