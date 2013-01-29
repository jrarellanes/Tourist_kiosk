require 'test_helper'

class UserVisitsControllerTest < ActionController::TestCase
  setup do
    @user_visit = user_visits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_visits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_visit" do
    assert_difference('UserVisit.count') do
      post :create, user_visit: { dateVisit: @user_visit.dateVisit, idsite: @user_visit.idsite, iduser: @user_visit.iduser, ratig: @user_visit.ratig }
    end

    assert_redirected_to user_visit_path(assigns(:user_visit))
  end

  test "should show user_visit" do
    get :show, id: @user_visit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_visit
    assert_response :success
  end

  test "should update user_visit" do
    put :update, id: @user_visit, user_visit: { dateVisit: @user_visit.dateVisit, idsite: @user_visit.idsite, iduser: @user_visit.iduser, ratig: @user_visit.ratig }
    assert_redirected_to user_visit_path(assigns(:user_visit))
  end

  test "should destroy user_visit" do
    assert_difference('UserVisit.count', -1) do
      delete :destroy, id: @user_visit
    end

    assert_redirected_to user_visits_path
  end
end
