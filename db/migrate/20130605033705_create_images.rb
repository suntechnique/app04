class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :id, unique: true
      t.integer :user_id
      t.string :path

      t.timestamps
    end
  end
end