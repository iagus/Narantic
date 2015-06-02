require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get application main page" do
    get :index
    assert_response :success
  end

end
