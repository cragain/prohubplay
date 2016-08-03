require 'test_helper'

class RagainsControllerTest < ActionController::TestCase
  setup do
    @ragain = ragains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ragains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ragain" do
    assert_difference('Ragain.count') do
      post :create, ragain: { guy: @ragain.guy }
    end

    assert_redirected_to ragain_path(assigns(:ragain))
  end

  test "should show ragain" do
    get :show, id: @ragain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ragain
    assert_response :success
  end

  test "should update ragain" do
    patch :update, id: @ragain, ragain: { guy: @ragain.guy }
    assert_redirected_to ragain_path(assigns(:ragain))
  end

  test "should destroy ragain" do
    assert_difference('Ragain.count', -1) do
      delete :destroy, id: @ragain
    end

    assert_redirected_to ragains_path
  end
end
