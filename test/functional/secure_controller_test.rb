require 'test_helper'

class SecureControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
