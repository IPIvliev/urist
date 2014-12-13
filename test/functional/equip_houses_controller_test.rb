require 'test_helper'

class EquipHousesControllerTest < ActionController::TestCase
  setup do
    @equip_house = equip_houses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equip_houses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equip_house" do
    assert_difference('EquipHouse.count') do
      post :create, equip_house: { equipname: @equip_house.equipname, housenumber: @equip_house.housenumber, idequip: @equip_house.idequip, name: @equip_house.name, street: @equip_house.street }
    end

    assert_redirected_to equip_house_path(assigns(:equip_house))
  end

  test "should show equip_house" do
    get :show, id: @equip_house
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equip_house
    assert_response :success
  end

  test "should update equip_house" do
    put :update, id: @equip_house, equip_house: { equipname: @equip_house.equipname, housenumber: @equip_house.housenumber, idequip: @equip_house.idequip, name: @equip_house.name, street: @equip_house.street }
    assert_redirected_to equip_house_path(assigns(:equip_house))
  end

  test "should destroy equip_house" do
    assert_difference('EquipHouse.count', -1) do
      delete :destroy, id: @equip_house
    end

    assert_redirected_to equip_houses_path
  end
end
