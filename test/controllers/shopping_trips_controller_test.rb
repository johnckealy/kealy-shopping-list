require 'test_helper'

class ShoppingTripsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get shopping_trips_new_url
    assert_response :success
  end

  test "should get create" do
    get shopping_trips_create_url
    assert_response :success
  end

  test "should get update" do
    get shopping_trips_update_url
    assert_response :success
  end

  test "should get edit" do
    get shopping_trips_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get shopping_trips_destroy_url
    assert_response :success
  end

end
