require 'test_helper'

class ImpressoesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get impressoes_index_url
    assert_response :success
  end

end
