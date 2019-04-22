require "application_system_test_case"

class CriterionsTest < ApplicationSystemTestCase
  setup do
    @criterion = criterions(:one)
  end

  test "visiting the index" do
    visit criterions_url
    assert_selector "h1", text: "Criterions"
  end

  test "creating a Criterion" do
    visit criterions_url
    click_on "New Criterion"

    fill_in "Description", with: @criterion.Description
    fill_in "Title", with: @criterion.Title
    click_on "Create Criterion"

    assert_text "Criterion was successfully created"
    click_on "Back"
  end

  test "updating a Criterion" do
    visit criterions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @criterion.Description
    fill_in "Title", with: @criterion.Title
    click_on "Update Criterion"

    assert_text "Criterion was successfully updated"
    click_on "Back"
  end

  test "destroying a Criterion" do
    visit criterions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Criterion was successfully destroyed"
  end
end
