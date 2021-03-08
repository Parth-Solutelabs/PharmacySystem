require "application_system_test_case"

class UserPrescriptionsTest < ApplicationSystemTestCase
  setup do
    @user_prescription = user_prescriptions(:one)
  end

  test "visiting the index" do
    visit user_prescriptions_url
    assert_selector "h1", text: "User Prescriptions"
  end

  test "creating a User prescription" do
    visit user_prescriptions_url
    click_on "New User Prescription"

    click_on "Create User prescription"

    assert_text "User prescription was successfully created"
    click_on "Back"
  end

  test "updating a User prescription" do
    visit user_prescriptions_url
    click_on "Edit", match: :first

    click_on "Update User prescription"

    assert_text "User prescription was successfully updated"
    click_on "Back"
  end

  test "destroying a User prescription" do
    visit user_prescriptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User prescription was successfully destroyed"
  end
end
