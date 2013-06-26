class CreateUserCards < ActiveRecord::Migration
  def change
    create_table :user_cards do |t|
      t.integer :uid
      t.string :attr01
      t.string :attr02
      t.string :attr03
      t.string :attr04
      t.string :attr05
      t.string :attr06
    end
  end
end
