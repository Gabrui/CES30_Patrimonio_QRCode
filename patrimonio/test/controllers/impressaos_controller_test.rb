require 'test_helper'

class ImpressaosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get impressaos_index_url
    assert_response :success
  end

end
