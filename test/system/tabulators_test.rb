require "application_system_test_case"

class TabulatorsTest < ApplicationSystemTestCase
  setup do
    @tabulator = tabulators(:one)
  end

  test "visiting the index" do
    visit tabulators_url
    assert_selector "h1", text: "Tabulators"
  end

  test "creating a Tabulator" do
    visit tabulators_url
    click_on "New Tabulator"

    fill_in "Name", with: @tabulator.name
    click_on "Create Tabulator"

    assert_text "Tabulator was successfully created"
    click_on "Back"
  end

  test "updating a Tabulator" do
    visit tabulators_url
    click_on "Edit", match: :first

    fill_in "Name", with: @tabulator.name
    click_on "Update Tabulator"

    assert_text "Tabulator was successfully updated"
    click_on "Back"
  end

  test "destroying a Tabulator" do
    visit tabulators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tabulator was successfully destroyed"
  end
end
