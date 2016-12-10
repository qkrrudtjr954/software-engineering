require 'test_helper'

class QnaControllerTest < ActionDispatch::IntegrationTest
  test "should get qna" do
    get qna_qna_url
    assert_response :success
  end

  test "should get create" do
    get qna_create_url
    assert_response :success
  end

  test "should get detail" do
    get qna_detail_url
    assert_response :success
  end

  test "should get detail_create" do
    get qna_detail_create_url
    assert_response :success
  end

end
