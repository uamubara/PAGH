require "application_system_test_case"

class MembersTest < ApplicationSystemTestCase
  setup do
    @member = members(:one)
  end

  test "visiting the index" do
    visit members_url
    assert_selector "h1", text: "Members"
  end

  test "creating a Member" do
    visit members_url
    click_on "New Member"

    fill_in "Age", with: @member.age
    fill_in "Birthdate", with: @member.birthdate
    fill_in "Cell phone", with: @member.cell_phone
    fill_in "City", with: @member.city
    fill_in "County", with: @member.county_id
    fill_in "Email", with: @member.email
    fill_in "First name", with: @member.first_name
    fill_in "Gender", with: @member.gender_id
    fill_in "Home phone", with: @member.home_phone
    fill_in "Last name string", with: @member.last_name_string
    fill_in "Member no", with: @member.member_no
    fill_in "Member since", with: @member.member_since
    fill_in "Membership ends", with: @member.membership_ends
    fill_in "Membership fee", with: @member.membership_fee_id
    fill_in "Middle initial", with: @member.middle_initial
    fill_in "Notes", with: @member.notes
    fill_in "Plan", with: @member.plan_id
    fill_in "Postal code", with: @member.postal_code
    fill_in "Role", with: @member.role_id
    check "Send card" if @member.send_card
    fill_in "State", with: @member.state_id
    fill_in "Status", with: @member.status_id
    fill_in "Street address", with: @member.street_address
    fill_in "Title", with: @member.title
    click_on "Create Member"

    assert_text "Member was successfully created"
    click_on "Back"
  end

  test "updating a Member" do
    visit members_url
    click_on "Edit", match: :first

    fill_in "Age", with: @member.age
    fill_in "Birthdate", with: @member.birthdate
    fill_in "Cell phone", with: @member.cell_phone
    fill_in "City", with: @member.city
    fill_in "County", with: @member.county_id
    fill_in "Email", with: @member.email
    fill_in "First name", with: @member.first_name
    fill_in "Gender", with: @member.gender_id
    fill_in "Home phone", with: @member.home_phone
    fill_in "Last name string", with: @member.last_name_string
    fill_in "Member no", with: @member.member_no
    fill_in "Member since", with: @member.member_since
    fill_in "Membership ends", with: @member.membership_ends
    fill_in "Membership fee", with: @member.membership_fee_id
    fill_in "Middle initial", with: @member.middle_initial
    fill_in "Notes", with: @member.notes
    fill_in "Plan", with: @member.plan_id
    fill_in "Postal code", with: @member.postal_code
    fill_in "Role", with: @member.role_id
    check "Send card" if @member.send_card
    fill_in "State", with: @member.state_id
    fill_in "Status", with: @member.status_id
    fill_in "Street address", with: @member.street_address
    fill_in "Title", with: @member.title
    click_on "Update Member"

    assert_text "Member was successfully updated"
    click_on "Back"
  end

  test "destroying a Member" do
    visit members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member was successfully destroyed"
  end
end
