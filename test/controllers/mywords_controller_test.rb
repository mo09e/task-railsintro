require 'test_helper'

class MywordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mywords_index_url
    assert_response :success
  end

end
