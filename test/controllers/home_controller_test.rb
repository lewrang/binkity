require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
  end

  test "should get contact_new" do
    get :contact_new
    assert_response :success
  end

  test "should get contact_create" do
    get :contact_create
    assert_response :success
  end

end
