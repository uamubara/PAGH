require "application_system_test_case"

class StatesTest < ApplicationSystemTestCase
  setup do
    @state = states(:one)
  end

  test "visiting the index" do
    visit states_url
    assert_selector "h1", text: "States"
  end

  test "creating a State" do
    visit states_url
    click_on "New State"

    fill_in "Statecode", with: @state.stateCode
    fill_in "Statename", with: @state.stateName
    click_on "Create State"

    assert_text "State was successfully created"
    click_on "Back"
  end

  test "updating a State" do
    visit states_url
    click_on "Edit", match: :first

    fill_in "Statecode", with: @state.stateCode
    fill_in "Statename", with: @state.stateName
    click_on "Update State"

    assert_text "State was successfully updated"
    click_on "Back"
  end

  test "destroying a State" do
    visit states_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State was successfully destroyed"
  end
end
