require "application_system_test_case"

class CourseevaluationsTest < ApplicationSystemTestCase
  setup do
    @courseevaluation = courseevaluations(:one)
  end

  test "visiting the index" do
    visit courseevaluations_url
    assert_selector "h1", text: "Courseevaluations"
  end

  test "creating a Courseevaluation" do
    visit courseevaluations_url
    click_on "New Courseevaluation"

    fill_in "Course", with: @courseevaluation.course_id
    fill_in "Criteriathreshold", with: @courseevaluation.criteriathreshold
    fill_in "Criterion", with: @courseevaluation.criterion_id
    fill_in "Faculty", with: @courseevaluation.faculty_id
    click_on "Create Courseevaluation"

    assert_text "Courseevaluation was successfully created"
    click_on "Back"
  end

  test "updating a Courseevaluation" do
    visit courseevaluations_url
    click_on "Edit", match: :first

    fill_in "Course", with: @courseevaluation.course_id
    fill_in "Criteriathreshold", with: @courseevaluation.criteriathreshold
    fill_in "Criterion", with: @courseevaluation.criterion_id
    fill_in "Faculty", with: @courseevaluation.faculty_id
    click_on "Update Courseevaluation"

    assert_text "Courseevaluation was successfully updated"
    click_on "Back"
  end

  test "destroying a Courseevaluation" do
    visit courseevaluations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Courseevaluation was successfully destroyed"
  end
end
