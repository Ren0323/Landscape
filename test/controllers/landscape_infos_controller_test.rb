require 'test_helper'

class LandscapeInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get landscape_infos_new_url
    assert_response :success
  end

  test "should get index" do
    get landscape_infos_index_url
    assert_response :success
  end

  test "should get show" do
    get landscape_infos_show_url
    assert_response :success
  end

  test "should get edit" do
    get landscape_infos_edit_url
    assert_response :success
  end

end
