require "application_system_test_case"

class UsersPrescriptionsTest < ApplicationSystemTestCase
  setup do
    @users_prescription = users_prescriptions(:one)
  end

  test "visiting the index" do
    visit users_prescriptions_url
    assert_selector "h1", text: "Users Prescriptions"
  end

  test "creating a Users prescription" do
    visit users_prescriptions_url
    click_on "New Users Prescription"

    click_on "Create Users prescription"

    assert_text "Users prescription was successfully created"
    click_on "Back"
  end

  test "updating a Users prescription" do
    visit users_prescriptions_url
    click_on "Edit", match: :first

    click_on "Update Users prescription"

    assert_text "Users prescription was successfully updated"
    click_on "Back"
  end

  test "destroying a Users prescription" do
    visit users_prescriptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Users prescription was successfully destroyed"
  end
end
