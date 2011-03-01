require 'test_helper'

class AlphasignupsControllerTest < ActionController::TestCase
  setup do
    @alphasignup = alphasignups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alphasignups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alphasignup" do
    assert_difference('Alphasignup.count') do
      post :create, :alphasignup => @alphasignup.attributes
    end

    assert_redirected_to alphasignup_path(assigns(:alphasignup))
  end

  test "should show alphasignup" do
    get :show, :id => @alphasignup.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @alphasignup.to_param
    assert_response :success
  end

  test "should update alphasignup" do
    put :update, :id => @alphasignup.to_param, :alphasignup => @alphasignup.attributes
    assert_redirected_to alphasignup_path(assigns(:alphasignup))
  end

  test "should destroy alphasignup" do
    assert_difference('Alphasignup.count', -1) do
      delete :destroy, :id => @alphasignup.to_param
    end

    assert_redirected_to alphasignups_path
  end
end
