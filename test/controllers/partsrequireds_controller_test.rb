require 'test_helper'

class PartsrequiredsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @partsrequired = partsrequireds(:one)
  end

  test "should get index" do
    get partsrequireds_url
    assert_response :success
  end

  test "should get new" do
    get new_partsrequired_url
    assert_response :success
  end

  test "should create partsrequired" do
    assert_difference('Partsrequired.count') do
      post partsrequireds_url, params: { partsrequired: { part_id: @partsrequired.part_id, quantity: @partsrequired.quantity, repair_id: @partsrequired.repair_id } }
    end

    assert_redirected_to partsrequired_url(Partsrequired.last)
  end

  test "should show partsrequired" do
    get partsrequired_url(@partsrequired)
    assert_response :success
  end

  test "should get edit" do
    get edit_partsrequired_url(@partsrequired)
    assert_response :success
  end

  test "should update partsrequired" do
    patch partsrequired_url(@partsrequired), params: { partsrequired: { part_id: @partsrequired.part_id, quantity: @partsrequired.quantity, repair_id: @partsrequired.repair_id } }
    assert_redirected_to partsrequired_url(@partsrequired)
  end

  test "should destroy partsrequired" do
    assert_difference('Partsrequired.count', -1) do
      delete partsrequired_url(@partsrequired)
    end

    assert_redirected_to partsrequireds_url
  end
end
