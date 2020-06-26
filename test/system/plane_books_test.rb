require "application_system_test_case"

class PlaneBooksTest < ApplicationSystemTestCase
  setup do
    @plane_book = plane_books(:one)
  end

  test "visiting the index" do
    visit plane_books_url
    assert_selector "h1", text: "Plane Books"
  end

  test "creating a Plane book" do
    visit plane_books_url
    click_on "New Plane Book"

    fill_in "Pass email", with: @plane_book.pass_email
    fill_in "Pass name", with: @plane_book.pass_name
    click_on "Create Plane book"

    assert_text "Plane book was successfully created"
    click_on "Back"
  end

  test "updating a Plane book" do
    visit plane_books_url
    click_on "Edit", match: :first

    fill_in "Pass email", with: @plane_book.pass_email
    fill_in "Pass name", with: @plane_book.pass_name
    click_on "Update Plane book"

    assert_text "Plane book was successfully updated"
    click_on "Back"
  end

  test "destroying a Plane book" do
    visit plane_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plane book was successfully destroyed"
  end
end
