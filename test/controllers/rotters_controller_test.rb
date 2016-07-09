require 'test_helper'

class RottersControllerTest < ActionController::TestCase
  setup do
    @rotter = rotters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rotters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rotter" do
    assert_difference('Rotter.count') do
      post :create, rotter: { email: @rotter.email, name: @rotter.name }
    end

    assert_redirected_to rotter_path(assigns(:rotter))
  end

  test "should show rotter" do
    get :show, id: @rotter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rotter
    assert_response :success
  end

  test "should update rotter" do
    patch :update, id: @rotter, rotter: { email: @rotter.email, name: @rotter.name }
    assert_redirected_to rotter_path(assigns(:rotter))
  end

  test "should destroy rotter" do
    assert_difference('Rotter.count', -1) do
      delete :destroy, id: @rotter
    end

    assert_redirected_to rotters_path
  end
end
