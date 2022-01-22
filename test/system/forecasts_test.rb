require "application_system_test_case"

class ForecastsTest < ApplicationSystemTestCase
  setup do
    @forecast = forecasts(:one)
  end

  test "visiting the index" do
    visit forecasts_url
    assert_selector "h1", text: "Forecasts"
  end

  test "should create forecast" do
    visit forecasts_url
    click_on "New forecast"

    fill_in "City", with: @forecast.city
    fill_in "Postal code", with: @forecast.postal_code
    fill_in "Request date", with: @forecast.request_date
    fill_in "State", with: @forecast.state
    fill_in "Street", with: @forecast.street
    fill_in "Street2", with: @forecast.street2
    fill_in "Temperature", with: @forecast.temperature
    click_on "Create Forecast"

    assert_text "Forecast was successfully created"
    click_on "Back"
  end

  test "should update Forecast" do
    visit forecast_url(@forecast)
    click_on "Edit this forecast", match: :first

    fill_in "City", with: @forecast.city
    fill_in "Postal code", with: @forecast.postal_code
    fill_in "Request date", with: @forecast.request_date
    fill_in "State", with: @forecast.state
    fill_in "Street", with: @forecast.street
    fill_in "Street2", with: @forecast.street2
    fill_in "Temperature", with: @forecast.temperature
    click_on "Update Forecast"

    assert_text "Forecast was successfully updated"
    click_on "Back"
  end

  test "should destroy Forecast" do
    visit forecast_url(@forecast)
    click_on "Destroy this forecast", match: :first

    assert_text "Forecast was successfully destroyed"
  end
end
