class AddColumnsToOrdersProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :orders_products, :cantidad, :integer
    add_column :orders_products, :subtotal, :integer
  end
end
