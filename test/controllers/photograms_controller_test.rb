require 'test_helper'

class PhotogramsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get photograms_index_url
    assert_response :success
  end

  test "should get show" do
    get photograms_show_url
    assert_response :success
  end

  test "should get new" do
    get photograms_new_url
    assert_response :success
  end

  test "should get edit" do
    get photograms_edit_url
    assert_response :success
  end

end
