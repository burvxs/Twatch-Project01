require 'test_helper'

class CommentssControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get commentss_edit_url
    assert_response :success
  end

  test "should get new" do
    get commentss_new_url
    assert_response :success
  end

  test "should get create" do
    get commentss_create_url
    assert_response :success
  end

  test "should get update" do
    get commentss_update_url
    assert_response :success
  end

  test "should get show" do
    get commentss_show_url
    assert_response :success
  end

  test "should get index" do
    get commentss_index_url
    assert_response :success
  end

end
