require 'test_helper'

class SilomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get siloms_index_url
    assert_response :success
  end

  test "should get import" do
    get siloms_import_url
    assert_response :success
  end

end
