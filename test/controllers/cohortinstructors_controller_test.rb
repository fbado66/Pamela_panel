require 'test_helper'

class CohortinstructorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cohortinstructors_index_url
    assert_response :success
  end

  test "should get show" do
    get cohortinstructors_show_url
    assert_response :success
  end

  test "should get edit" do
    get cohortinstructors_edit_url
    assert_response :success
  end

  test "should get delete" do
    get cohortinstructors_delete_url
    assert_response :success
  end

  test "should get create" do
    get cohortinstructors_create_url
    assert_response :success
  end

  test "should get update" do
    get cohortinstructors_update_url
    assert_response :success
  end

end
