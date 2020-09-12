require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get docs" do
    get static_pages_docs_url
    assert_response :success
  end

end
