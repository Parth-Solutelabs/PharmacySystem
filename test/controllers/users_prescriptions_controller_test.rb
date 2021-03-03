require "test_helper"

class UsersPrescriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_prescription = users_prescriptions(:one)
  end

  test "should get index" do
    get users_prescriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_users_prescription_url
    assert_response :success
  end

  test "should create users_prescription" do
    assert_difference('UsersPrescription.count') do
      post users_prescriptions_url, params: { users_prescription: {  } }
    end

    assert_redirected_to users_prescription_url(UsersPrescription.last)
  end

  test "should show users_prescription" do
    get users_prescription_url(@users_prescription)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_prescription_url(@users_prescription)
    assert_response :success
  end

  test "should update users_prescription" do
    patch users_prescription_url(@users_prescription), params: { users_prescription: {  } }
    assert_redirected_to users_prescription_url(@users_prescription)
  end

  test "should destroy users_prescription" do
    assert_difference('UsersPrescription.count', -1) do
      delete users_prescription_url(@users_prescription)
    end

    assert_redirected_to users_prescriptions_url
  end
end
