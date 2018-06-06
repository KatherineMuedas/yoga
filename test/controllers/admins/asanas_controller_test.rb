require 'test_helper'

class Admins::AsanasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_asanas_new_url
    assert_response :success
  end

  test "should get create" do
    get admins_asanas_create_url
    assert_response :success
  end

  test "should get edit" do
    get admins_asanas_edit_url
    assert_response :success
  end

  test "should get update" do
    get admins_asanas_update_url
    assert_response :success
  end

end
