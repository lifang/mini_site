class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :secret_id
    end
    add_index :users, :secret_id
  end
end
