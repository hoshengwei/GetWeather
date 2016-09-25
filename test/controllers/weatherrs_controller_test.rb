require 'test_helper'

class WeatherrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weatherr = weatherrs(:one)
  end

  test "should get index" do
    get weatherrs_url
    assert_response :success
  end

  test "should get new" do
    get new_weatherr_url
    assert_response :success
  end

  test "should create weatherr" do
    assert_difference('Weatherr.count') do
      post weatherrs_url, params: { weatherr: { date: @weatherr.date } }
    end

    assert_redirected_to weatherr_url(Weatherr.last)
  end

  test "should show weatherr" do
    get weatherr_url(@weatherr)
    assert_response :success
  end

  test "should get edit" do
    get edit_weatherr_url(@weatherr)
    assert_response :success
  end

  test "should update weatherr" do
    patch weatherr_url(@weatherr), params: { weatherr: { date: @weatherr.date } }
    assert_redirected_to weatherr_url(@weatherr)
  end

  test "should destroy weatherr" do
    assert_difference('Weatherr.count', -1) do
      delete weatherr_url(@weatherr)
    end

    assert_redirected_to weatherrs_url
  end
end
