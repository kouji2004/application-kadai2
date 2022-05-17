require "test_helper"

class SearchsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get searchs_top_url
    assert_response :success
  end
end
