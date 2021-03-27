require "application_system_test_case"

class PcrTypesTest < ApplicationSystemTestCase
  setup do
    @pcr_type = pcr_types(:one)
  end

  test "visiting the index" do
    visit pcr_types_url
    assert_selector "h1", text: "Pcr Types"
  end

  test "creating a Pcr type" do
    visit pcr_types_url
    click_on "New Pcr Type"

    fill_in "Name", with: @pcr_type.name
    click_on "Create Pcr type"

    assert_text "Pcr type was successfully created"
    click_on "Back"
  end

  test "updating a Pcr type" do
    visit pcr_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @pcr_type.name
    click_on "Update Pcr type"

    assert_text "Pcr type was successfully updated"
    click_on "Back"
  end

  test "destroying a Pcr type" do
    visit pcr_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pcr type was successfully destroyed"
  end
end
