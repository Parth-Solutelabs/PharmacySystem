class Correct < ActiveRecord::Migration[6.1]
  def change
    add_reference :prescriptions, :user
  end
end
