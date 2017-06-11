class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :Uid
      t.text :Name

      t.timestamps
    end
    add_index :users, :Uid, unique: true
  end
end
