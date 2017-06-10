class CreateRselects < ActiveRecord::Migration[5.0]
  def change
    create_table :rselects do |t|
      t.string :rselname
      t.integer :rselval
    end
  end
end
