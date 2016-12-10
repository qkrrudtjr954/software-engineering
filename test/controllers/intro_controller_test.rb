require 'test_helper'

class IntroControllerTest < ActionDispatch::IntegrationTest
  test "should get intro_main" do
    get intro_intro_main_url
    assert_response :success
  end

  test "should get intro_detail" do
    get intro_intro_detail_url
    assert_response :success
  end

end
