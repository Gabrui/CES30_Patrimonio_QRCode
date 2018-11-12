require 'test_helper'

class LeiturasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leituras_index_url
    assert_response :success
  end

end
