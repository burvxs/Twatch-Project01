require 'test_helper'

class StreamsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get streams_new_url
    assert_response :success
  end

  test "should get index" do
    get streams_index_url
    assert_response :success
  end

  test "should get update" do
    get streams_update_url
    assert_response :success
  end

  test "should get create" do
    get streams_create_url
    assert_response :success
  end

  test "should get edit" do
    get streams_edit_url
    assert_response :success
  end

  test "should get show" do
    get streams_show_url
    assert_response :success
  end

end
