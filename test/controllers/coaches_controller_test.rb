require "test_helper"

class CoachesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coaches_index_url
    assert_response :success
  end

  test "should get show" do
    get coaches_show_url
    assert_response :success
  end

  test "should get new" do
    get coaches_new_url
    assert_response :success
  end

  test "should get create" do
    get coaches_create_url
    assert_response :success
  end

  test "should get edit" do
    get coaches_edit_url
    assert_response :success
  end

  test "should get update" do
    get coaches_update_url
    assert_response :success
  end

  test "should get destroy" do
    get coaches_destroy_url
    assert_response :success
  end
end
