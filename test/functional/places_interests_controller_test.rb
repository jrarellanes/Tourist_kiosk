require 'test_helper'

class PlacesInterestsControllerTest < ActionController::TestCase
  setup do
    @places_interest = places_interests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places_interests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create places_interest" do
    assert_difference('PlacesInterest.count') do
      post :create, places_interest: { description: @places_interest.description, horary: @places_interest.horary, idClasification: @places_interest.idClasification, name: @places_interest.name, popularity: @places_interest.popularity, ubication: @places_interest.ubication, urlImage: @places_interest.urlImage }
    end

    assert_redirected_to places_interest_path(assigns(:places_interest))
  end

  test "should show places_interest" do
    get :show, id: @places_interest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @places_interest
    assert_response :success
  end

  test "should update places_interest" do
    put :update, id: @places_interest, places_interest: { description: @places_interest.description, horary: @places_interest.horary, idClasification: @places_interest.idClasification, name: @places_interest.name, popularity: @places_interest.popularity, ubication: @places_interest.ubication, urlImage: @places_interest.urlImage }
    assert_redirected_to places_interest_path(assigns(:places_interest))
  end

  test "should destroy places_interest" do
    assert_difference('PlacesInterest.count', -1) do
      delete :destroy, id: @places_interest
    end

    assert_redirected_to places_interests_path
  end
end
