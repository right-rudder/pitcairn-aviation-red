require "application_system_test_case"

class FuelPricesTest < ApplicationSystemTestCase
  setup do
    @fuel_price = fuel_prices(:one)
  end

  test "visiting the index" do
    visit fuel_prices_url
    assert_selector "h1", text: "Fuel prices"
  end

  test "should create fuel price" do
    visit fuel_prices_url
    click_on "New fuel price"

    fill_in "Jet a full service", with: @fuel_price.jet_a_full_service
    fill_in "Jet a self service", with: @fuel_price.jet_a_self_service
    fill_in "Ll full service", with: @fuel_price.ll_full_service
    fill_in "Ll self service", with: @fuel_price.ll_self_service
    click_on "Create Fuel price"

    assert_text "Fuel price was successfully created"
    click_on "Back"
  end

  test "should update Fuel price" do
    visit fuel_price_url(@fuel_price)
    click_on "Edit this fuel price", match: :first

    fill_in "Jet a full service", with: @fuel_price.jet_a_full_service
    fill_in "Jet a self service", with: @fuel_price.jet_a_self_service
    fill_in "Ll full service", with: @fuel_price.ll_full_service
    fill_in "Ll self service", with: @fuel_price.ll_self_service
    click_on "Update Fuel price"

    assert_text "Fuel price was successfully updated"
    click_on "Back"
  end

  test "should destroy Fuel price" do
    visit fuel_price_url(@fuel_price)
    click_on "Destroy this fuel price", match: :first

    assert_text "Fuel price was successfully destroyed"
  end
end
