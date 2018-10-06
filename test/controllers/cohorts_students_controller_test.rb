require 'test_helper'

class CohortsStudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cohorts_students_index_url
    assert_response :success
  end

  test "should get show" do
    get cohorts_students_show_url
    assert_response :success
  end

  test "should get edit" do
    get cohorts_students_edit_url
    assert_response :success
  end

  test "should get delete" do
    get cohorts_students_delete_url
    assert_response :success
  end

  test "should get create" do
    get cohorts_students_create_url
    assert_response :success
  end

  test "should get update" do
    get cohorts_students_update_url
    assert_response :success
  end

end
