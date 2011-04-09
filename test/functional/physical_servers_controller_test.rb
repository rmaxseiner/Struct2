require 'test_helper'

class PhysicalServersControllerTest < ActionController::TestCase
  setup do
    @physical_server = physical_servers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:physical_servers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create physical_server" do
    assert_difference('PhysicalServer.count') do
      post :create, :physical_server => @physical_server.attributes
    end

    assert_redirected_to physical_server_path(assigns(:physical_server))
  end

  test "should show physical_server" do
    get :show, :id => @physical_server.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @physical_server.to_param
    assert_response :success
  end

  test "should update physical_server" do
    put :update, :id => @physical_server.to_param, :physical_server => @physical_server.attributes
    assert_redirected_to physical_server_path(assigns(:physical_server))
  end

  test "should destroy physical_server" do
    assert_difference('PhysicalServer.count', -1) do
      delete :destroy, :id => @physical_server.to_param
    end

    assert_redirected_to physical_servers_path
  end
end
