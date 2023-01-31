class AddColumnToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :p_Quantity, :integer
  end
end
