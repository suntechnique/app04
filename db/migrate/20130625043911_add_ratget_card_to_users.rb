class AddRatgetCardToUsers < ActiveRecord::Migration
  def change
    add_column :users, :target_card, :string
  end
end
