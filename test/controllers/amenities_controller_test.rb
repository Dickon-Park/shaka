require 'test_helper'

class AmenitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get amenities_create_url
    assert_response :success
  end

  test "should get update" do
    get amenities_update_url
    assert_response :success
  end

end
