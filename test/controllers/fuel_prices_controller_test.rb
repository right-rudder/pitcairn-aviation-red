require "test_helper"

class FuelPricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuel_price = fuel_prices(:one)
  end

  test "should get index" do
    get fuel_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_fuel_price_url
    assert_response :success
  end

  test "should create fuel_price" do
    assert_difference("FuelPrice.count") do
      post fuel_prices_url, params: { fuel_price: { jet_a_full_service: @fuel_price.jet_a_full_service, jet_a_self_service: @fuel_price.jet_a_self_service, ll_full_service: @fuel_price.ll_full_service, ll_self_service: @fuel_price.ll_self_service } }
    end

    assert_redirected_to fuel_price_url(FuelPrice.last)
  end

  test "should show fuel_price" do
    get fuel_price_url(@fuel_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_fuel_price_url(@fuel_price)
    assert_response :success
  end

  test "should update fuel_price" do
    patch fuel_price_url(@fuel_price), params: { fuel_price: { jet_a_full_service: @fuel_price.jet_a_full_service, jet_a_self_service: @fuel_price.jet_a_self_service, ll_full_service: @fuel_price.ll_full_service, ll_self_service: @fuel_price.ll_self_service } }
    assert_redirected_to fuel_price_url(@fuel_price)
  end

  test "should destroy fuel_price" do
    assert_difference("FuelPrice.count", -1) do
      delete fuel_price_url(@fuel_price)
    end

    assert_redirected_to fuel_prices_url
  end
end
