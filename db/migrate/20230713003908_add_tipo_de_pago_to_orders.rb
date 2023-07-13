class AddTipoDePagoToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :tipo_de_pago, null: false, foreign_key: true
  end
end
