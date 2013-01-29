require 'test_helper'

class EmergencyrequestsControllerTest < ActionController::TestCase
  setup do
    @emergencyrequest = emergencyrequests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emergencyrequests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emergencyrequest" do
    assert_difference('Emergencyrequest.count') do
      post :create, emergencyrequest: { dateRequest: @emergencyrequest.dateRequest, idcorporation: @emergencyrequest.idcorporation, iduser: @emergencyrequest.iduser }
    end

    assert_redirected_to emergencyrequest_path(assigns(:emergencyrequest))
  end

  test "should show emergencyrequest" do
    get :show, id: @emergencyrequest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emergencyrequest
    assert_response :success
  end

  test "should update emergencyrequest" do
    put :update, id: @emergencyrequest, emergencyrequest: { dateRequest: @emergencyrequest.dateRequest, idcorporation: @emergencyrequest.idcorporation, iduser: @emergencyrequest.iduser }
    assert_redirected_to emergencyrequest_path(assigns(:emergencyrequest))
  end

  test "should destroy emergencyrequest" do
    assert_difference('Emergencyrequest.count', -1) do
      delete :destroy, id: @emergencyrequest
    end

    assert_redirected_to emergencyrequests_path
  end
end
