require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

  test "title should be help" do
    get static_pages_help_url
    assert_select "title", "Help"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

end
