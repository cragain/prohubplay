require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  test "should get documents" do
    get :documents
    assert_response :success
  end

  test "should get tasks" do
    get :tasks
    assert_response :success
  end

  test "should get calendar" do
    get :calendar
    assert_response :success
  end

end
