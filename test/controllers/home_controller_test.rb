require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get read" do
    get :read
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get update_post" do
    get :update_post
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
