require 'test_helper'

class UrgenciesControllerTest < ActionController::TestCase
  setup do
    @urgency = urgencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:urgencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create urgency" do
    assert_difference('Urgency.count') do
      post :create, urgency: { level: @urgency.level }
    end

    assert_redirected_to urgency_path(assigns(:urgency))
  end

  test "should show urgency" do
    get :show, id: @urgency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @urgency
    assert_response :success
  end

  test "should update urgency" do
    patch :update, id: @urgency, urgency: { level: @urgency.level }
    assert_redirected_to urgency_path(assigns(:urgency))
  end

  test "should destroy urgency" do
    assert_difference('Urgency.count', -1) do
      delete :destroy, id: @urgency
    end

    assert_redirected_to urgencies_path
  end
end
