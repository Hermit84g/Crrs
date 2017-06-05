class CreateCrs < ActiveRecord::Migration[5.0]
  def change
    create_table :crs do |t|
      t.references :user, foreign_key: true, index: true
      t.string :Name
      t.string :text
      t.string :Accused

      t.timestamps
    end
  end
end
