require 'test_helper'

class ApealsControllerTest < ActionController::TestCase
  setup do
    @apeal = apeals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apeals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apeal" do
    assert_difference('Apeal.count') do
      post :create, apeal: { finish: @apeal.finish, house: @apeal.house, how: @apeal.how, korpus: @apeal.korpus, phone: @apeal.phone, street: @apeal.street, term: @apeal.term, text: @apeal.text, who: @apeal.who }
    end

    assert_redirected_to apeal_path(assigns(:apeal))
  end

  test "should show apeal" do
    get :show, id: @apeal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apeal
    assert_response :success
  end

  test "should update apeal" do
    put :update, id: @apeal, apeal: { finish: @apeal.finish, house: @apeal.house, how: @apeal.how, korpus: @apeal.korpus, phone: @apeal.phone, street: @apeal.street, term: @apeal.term, text: @apeal.text, who: @apeal.who }
    assert_redirected_to apeal_path(assigns(:apeal))
  end

  test "should destroy apeal" do
    assert_difference('Apeal.count', -1) do
      delete :destroy, id: @apeal
    end

    assert_redirected_to apeals_path
  end
end
