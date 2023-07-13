class CreateTipoDePagos < ActiveRecord::Migration[7.0]
  def change
    create_table :tipo_de_pagos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
