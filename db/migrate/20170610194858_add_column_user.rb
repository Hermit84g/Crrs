class AddColumnUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :division_id, :integer
    add_column :users, :ext, :integer
  end
    add_index :users, [:division_id]

end
