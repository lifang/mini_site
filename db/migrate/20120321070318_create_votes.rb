class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :id
      t.integer :user_id
      t.integer :share_id
      t.timestamps
    end
    add_index :votes,:user_id
    add_index :votes,:share_id
  end
end
