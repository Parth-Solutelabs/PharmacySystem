class AddDetailsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :uid, :integer
    add_column :users, :phone, :string
    add_column :users, :title, :string
  end
end
