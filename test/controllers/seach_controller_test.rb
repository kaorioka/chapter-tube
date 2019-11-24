require 'test_helper'

class SeachControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seach_index_url
    assert_response :success
  end

end
