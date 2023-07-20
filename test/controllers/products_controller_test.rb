require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    sign_in user(:one)
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    sign_in user(:one)
    assert_difference("Product.count") do
      post products_url, params: { product: { name: @product.name, price: @product.price, size: @product.size } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    sign_in user(:one)
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    sign_in user(:one)
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    sign_in user(:one)
    patch product_url(@product), params: { product: { name: @product.name, price: @product.price, size: @product.size } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    sign_in user(:one)
    assert_difference("Product.count", -1) do
      delete product_url(@product)
      assert_redirected_to products_url
    end

    assert_redirected_to products_url
  end
end
