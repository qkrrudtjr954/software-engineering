require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get store_index" do
    get store_store_index_url
    assert_response :success
  end

  test "should get create" do
    get store_create_url
    assert_response :success
  end

end
