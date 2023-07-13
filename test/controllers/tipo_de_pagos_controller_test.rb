require "test_helper"

class TipoDePagosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_de_pago = tipo_de_pagos(:one)
  end

  test "should get index" do
    get tipo_de_pagos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_de_pago_url
    assert_response :success
  end

  test "should create tipo_de_pago" do
    assert_difference("TipoDePago.count") do
      post tipo_de_pagos_url, params: { tipo_de_pago: { nombre: @tipo_de_pago.nombre } }
    end

    assert_redirected_to tipo_de_pago_url(TipoDePago.last)
  end

  test "should show tipo_de_pago" do
    get tipo_de_pago_url(@tipo_de_pago)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_de_pago_url(@tipo_de_pago)
    assert_response :success
  end

  test "should update tipo_de_pago" do
    patch tipo_de_pago_url(@tipo_de_pago), params: { tipo_de_pago: { nombre: @tipo_de_pago.nombre } }
    assert_redirected_to tipo_de_pago_url(@tipo_de_pago)
  end

  test "should destroy tipo_de_pago" do
    assert_difference("TipoDePago.count", -1) do
      delete tipo_de_pago_url(@tipo_de_pago)
    end

    assert_redirected_to tipo_de_pagos_url
  end
end
