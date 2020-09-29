require "application_system_test_case"

class MembershipFeesTest < ApplicationSystemTestCase
  setup do
    @membership_fee = membership_fees(:one)
  end

  test "visiting the index" do
    visit membership_fees_url
    assert_selector "h1", text: "Membership Fees"
  end

  test "creating a Membership fee" do
    visit membership_fees_url
    click_on "New Membership Fee"

    fill_in "Membership fees status", with: @membership_fee.membership_fees_status
    click_on "Create Membership fee"

    assert_text "Membership fee was successfully created"
    click_on "Back"
  end

  test "updating a Membership fee" do
    visit membership_fees_url
    click_on "Edit", match: :first

    fill_in "Membership fees status", with: @membership_fee.membership_fees_status
    click_on "Update Membership fee"

    assert_text "Membership fee was successfully updated"
    click_on "Back"
  end

  test "destroying a Membership fee" do
    visit membership_fees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Membership fee was successfully destroyed"
  end
end
