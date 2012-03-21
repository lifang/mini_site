class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.integer :id
      t.integer :user_id
      t.string :content
      t.timestamps
    end
    add_index :shares,:user_id
  end
end
