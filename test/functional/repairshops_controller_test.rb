require 'test_helper'

class RepairshopsControllerTest < ActionController::TestCase
  setup do
    @repairshop = repairshops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repairshops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repairshop" do
    assert_difference('Repairshop.count') do
      post :create, :repairshop => @repairshop.attributes
    end

    assert_redirected_to repairshop_path(assigns(:repairshop))
  end

  test "should show repairshop" do
    get :show, :id => @repairshop.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @repairshop.to_param
    assert_response :success
  end

  test "should update repairshop" do
    put :update, :id => @repairshop.to_param, :repairshop => @repairshop.attributes
    assert_redirected_to repairshop_path(assigns(:repairshop))
  end

  test "should destroy repairshop" do
    assert_difference('Repairshop.count', -1) do
      delete :destroy, :id => @repairshop.to_param
    end

    assert_redirected_to repairshops_path
  end
end
