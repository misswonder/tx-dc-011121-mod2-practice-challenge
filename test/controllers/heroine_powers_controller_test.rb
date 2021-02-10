require 'test_helper'

class HeroinePowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @heroine_power = heroine_powers(:one)
  end

  test "should get index" do
    get heroine_powers_url
    assert_response :success
  end

  test "should get new" do
    get new_heroine_power_url
    assert_response :success
  end

  test "should create heroine_power" do
    assert_difference('HeroinePower.count') do
      post heroine_powers_url, params: { heroine_power: {  } }
    end

    assert_redirected_to heroine_power_url(HeroinePower.last)
  end

  test "should show heroine_power" do
    get heroine_power_url(@heroine_power)
    assert_response :success
  end

  test "should get edit" do
    get edit_heroine_power_url(@heroine_power)
    assert_response :success
  end

  test "should update heroine_power" do
    patch heroine_power_url(@heroine_power), params: { heroine_power: {  } }
    assert_redirected_to heroine_power_url(@heroine_power)
  end

  test "should destroy heroine_power" do
    assert_difference('HeroinePower.count', -1) do
      delete heroine_power_url(@heroine_power)
    end

    assert_redirected_to heroine_powers_url
  end
end
