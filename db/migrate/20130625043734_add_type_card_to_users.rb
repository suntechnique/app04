class AddTypeCardToUsers < ActiveRecord::Migration
  def change
    add_column :users, :type_card, :integer
  end
end
