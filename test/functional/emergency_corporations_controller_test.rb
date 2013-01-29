require 'test_helper'

class EmergencyCorporationsControllerTest < ActionController::TestCase
  setup do
    @emergency_corporation = emergency_corporations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emergency_corporations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emergency_corporation" do
    assert_difference('EmergencyCorporation.count') do
      post :create, emergency_corporation: { description: @emergency_corporation.description, location: @emergency_corporation.location, name: @emergency_corporation.name, phone: @emergency_corporation.phone }
    end

    assert_redirected_to emergency_corporation_path(assigns(:emergency_corporation))
  end

  test "should show emergency_corporation" do
    get :show, id: @emergency_corporation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emergency_corporation
    assert_response :success
  end

  test "should update emergency_corporation" do
    put :update, id: @emergency_corporation, emergency_corporation: { description: @emergency_corporation.description, location: @emergency_corporation.location, name: @emergency_corporation.name, phone: @emergency_corporation.phone }
    assert_redirected_to emergency_corporation_path(assigns(:emergency_corporation))
  end

  test "should destroy emergency_corporation" do
    assert_difference('EmergencyCorporation.count', -1) do
      delete :destroy, id: @emergency_corporation
    end

    assert_redirected_to emergency_corporations_path
  end
end
