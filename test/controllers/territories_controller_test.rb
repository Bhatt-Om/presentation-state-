require "test_helper"

class TerritoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get territories_index_url
    assert_response :success
  end

  test "should get show" do
    get territories_show_url
    assert_response :success
  end

  test "should get new" do
    get territories_new_url
    assert_response :success
  end

  test "should get create" do
    get territories_create_url
    assert_response :success
  end

  test "should get edit" do
    get territories_edit_url
    assert_response :success
  end

  test "should get update" do
    get territories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get territories_destroy_url
    assert_response :success
  end
end
