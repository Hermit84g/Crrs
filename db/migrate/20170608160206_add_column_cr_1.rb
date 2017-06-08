class AddColumnCr1 < ActiveRecord::Migration[5.0]
  def change
    add_column :crs, :status, :integer
    add_column :crs, :r_select, :integer
    add_column :crs, :ext, :integer
    add_column :crs, :division, :text
    add_column :crs, :cr_year, :integer
    add_column :crs, :cr_type, :integer
    add_column :crs, :cr_term, :integer
    add_column :crs, :cr_no, :integer
    add_column :crs, :officer, :text
    add_column :crs, :amount_ka, :integer
    add_column :crs, :amount_fu, :integer



  end
end
