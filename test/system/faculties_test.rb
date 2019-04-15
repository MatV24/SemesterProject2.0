require "application_system_test_case"

class FacultiesTest < ApplicationSystemTestCase
  setup do
    @faculty = faculties(:one)
  end

  test "visiting the index" do
    visit faculties_url
    assert_selector "h1", text: "Faculties"
  end

  test "creating a Faculty" do
    visit faculties_url
    click_on "New Faculty"

    fill_in "Email", with: @faculty.Email
    fill_in "Firstname", with: @faculty.Firstname
    fill_in "Lastname", with: @faculty.Lastname
    fill_in "Phone", with: @faculty.Phone
    fill_in "Ttitle", with: @faculty.Ttitle
    click_on "Create Faculty"

    assert_text "Faculty was successfully created"
    click_on "Back"
  end

  test "updating a Faculty" do
    visit faculties_url
    click_on "Edit", match: :first

    fill_in "Email", with: @faculty.Email
    fill_in "Firstname", with: @faculty.Firstname
    fill_in "Lastname", with: @faculty.Lastname
    fill_in "Phone", with: @faculty.Phone
    fill_in "Ttitle", with: @faculty.Ttitle
    click_on "Update Faculty"

    assert_text "Faculty was successfully updated"
    click_on "Back"
  end

  test "destroying a Faculty" do
    visit faculties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Faculty was successfully destroyed"
  end
end
