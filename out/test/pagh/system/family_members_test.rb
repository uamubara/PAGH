require "application_system_test_case"

class FamilyMembersTest < ApplicationSystemTestCase
  setup do
    @family_member = family_members(:one)
  end

  test "visiting the index" do
    visit family_members_url
    assert_selector "h1", text: "Family Members"
  end

  test "creating a Family member" do
    visit family_members_url
    click_on "New Family Member"

    fill_in "Age", with: @family_member.age
    fill_in "Birthdate", with: @family_member.birthdate
    fill_in "Cell phone", with: @family_member.cell_phone
    fill_in "Email", with: @family_member.email
    fill_in "First name", with: @family_member.first_name
    fill_in "Gender", with: @family_member.gender_id
    fill_in "Home phone", with: @family_member.home_phone
    fill_in "Last name", with: @family_member.last_name
    fill_in "Member", with: @family_member.member_id
    fill_in "Middle initial", with: @family_member.middle_initial
    fill_in "Relationship", with: @family_member.relationship_id
    fill_in "Title", with: @family_member.title
    click_on "Create Family member"

    assert_text "Family member was successfully created"
    click_on "Back"
  end

  test "updating a Family member" do
    visit family_members_url
    click_on "Edit", match: :first

    fill_in "Age", with: @family_member.age
    fill_in "Birthdate", with: @family_member.birthdate
    fill_in "Cell phone", with: @family_member.cell_phone
    fill_in "Email", with: @family_member.email
    fill_in "First name", with: @family_member.first_name
    fill_in "Gender", with: @family_member.gender_id
    fill_in "Home phone", with: @family_member.home_phone
    fill_in "Last name", with: @family_member.last_name
    fill_in "Member", with: @family_member.member_id
    fill_in "Middle initial", with: @family_member.middle_initial
    fill_in "Relationship", with: @family_member.relationship_id
    fill_in "Title", with: @family_member.title
    click_on "Update Family member"

    assert_text "Family member was successfully updated"
    click_on "Back"
  end

  test "destroying a Family member" do
    visit family_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Family member was successfully destroyed"
  end
end
