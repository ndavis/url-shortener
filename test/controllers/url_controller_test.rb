require 'test_helper'

class UrlControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get url_create_url
    assert_response :success
  end

end
