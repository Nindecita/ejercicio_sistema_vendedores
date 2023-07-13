require "application_system_test_case"

class TipoDePagosTest < ApplicationSystemTestCase
  setup do
    @tipo_de_pago = tipo_de_pagos(:one)
  end

  test "visiting the index" do
    visit tipo_de_pagos_url
    assert_selector "h1", text: "Tipo de pagos"
  end

  test "should create tipo de pago" do
    visit tipo_de_pagos_url
    click_on "New tipo de pago"

    fill_in "Nombre", with: @tipo_de_pago.nombre
    click_on "Create Tipo de pago"

    assert_text "Tipo de pago was successfully created"
    click_on "Back"
  end

  test "should update Tipo de pago" do
    visit tipo_de_pago_url(@tipo_de_pago)
    click_on "Edit this tipo de pago", match: :first

    fill_in "Nombre", with: @tipo_de_pago.nombre
    click_on "Update Tipo de pago"

    assert_text "Tipo de pago was successfully updated"
    click_on "Back"
  end

  test "should destroy Tipo de pago" do
    visit tipo_de_pago_url(@tipo_de_pago)
    click_on "Destroy this tipo de pago", match: :first

    assert_text "Tipo de pago was successfully destroyed"
  end
end
