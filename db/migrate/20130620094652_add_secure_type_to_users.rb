class AddSecureTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :secure_type, :string
  end
end