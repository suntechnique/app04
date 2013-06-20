class AddTabelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tabel, :string
  end
end
