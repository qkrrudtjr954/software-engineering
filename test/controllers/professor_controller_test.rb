require 'test_helper'

class ProfessorControllerTest < ActionDispatch::IntegrationTest
  test "should get pro_index" do
    get professor_pro_index_url
    assert_response :success
  end

  test "should get pro_detail" do
    get professor_pro_detail_url
    assert_response :success
  end

end
