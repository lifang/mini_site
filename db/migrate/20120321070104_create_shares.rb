class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.integer :id
      t.integer :user_id
      t.string :content
      t.integer :total_vote,:default=>0
      t.timestamps
    end
    add_index :shares,:user_id
    add_index :shares,:total_vote
  end
end
