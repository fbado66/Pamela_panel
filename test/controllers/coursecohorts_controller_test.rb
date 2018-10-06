require 'test_helper'

class CoursecohortsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coursecohorts_index_url
    assert_response :success
  end

  test "should get show" do
    get coursecohorts_show_url
    assert_response :success
  end

  test "should get edit" do
    get coursecohorts_edit_url
    assert_response :success
  end

  test "should get delete" do
    get coursecohorts_delete_url
    assert_response :success
  end

  test "should get create" do
    get coursecohorts_create_url
    assert_response :success
  end

  test "should get update" do
    get coursecohorts_update_url
    assert_response :success
  end

end
