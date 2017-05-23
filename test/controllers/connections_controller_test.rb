require 'test_helper'

class ConnectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get connections_create_url
    assert_response :success
  end

  test "should get destroy" do
    get connections_destroy_url
    assert_response :success
  end

end
