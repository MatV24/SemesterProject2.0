require "application_system_test_case"

class CoursecriterionsTest < ApplicationSystemTestCase
  setup do
    @coursecriterion = coursecriterions(:one)
  end

  test "visiting the index" do
    visit coursecriterions_url
    assert_selector "h1", text: "Coursecriterions"
  end

  test "creating a Coursecriterion" do
    visit coursecriterions_url
    click_on "New Coursecriterion"

    fill_in "Accept", with: @coursecriterion.Accept
    fill_in "Exceed", with: @coursecriterion.Exceed
    fill_in "Poor", with: @coursecriterion.Poor
    click_on "Create Coursecriterion"

    assert_text "Coursecriterion was successfully created"
    click_on "Back"
  end

  test "updating a Coursecriterion" do
    visit coursecriterions_url
    click_on "Edit", match: :first

    fill_in "Accept", with: @coursecriterion.Accept
    fill_in "Exceed", with: @coursecriterion.Exceed
    fill_in "Poor", with: @coursecriterion.Poor
    click_on "Update Coursecriterion"

    assert_text "Coursecriterion was successfully updated"
    click_on "Back"
  end

  test "destroying a Coursecriterion" do
    visit coursecriterions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coursecriterion was successfully destroyed"
  end
end
