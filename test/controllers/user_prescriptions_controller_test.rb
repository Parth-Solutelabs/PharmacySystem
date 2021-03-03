require "test_helper"

class UserPrescriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_prescription = user_prescriptions(:one)
  end

  test "should get index" do
    get user_prescriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_user_prescription_url
    assert_response :success
  end

  test "should create user_prescription" do
    assert_difference('UserPrescription.count') do
      post user_prescriptions_url, params: { user_prescription: {  } }
    end

    assert_redirected_to user_prescription_url(UserPrescription.last)
  end

  test "should show user_prescription" do
    get user_prescription_url(@user_prescription)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_prescription_url(@user_prescription)
    assert_response :success
  end

  test "should update user_prescription" do
    patch user_prescription_url(@user_prescription), params: { user_prescription: {  } }
    assert_redirected_to user_prescription_url(@user_prescription)
  end

  test "should destroy user_prescription" do
    assert_difference('UserPrescription.count', -1) do
      delete user_prescription_url(@user_prescription)
    end

    assert_redirected_to user_prescriptions_url
  end
end
