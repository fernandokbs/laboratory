require "application_system_test_case"

class ServicetypesTest < ApplicationSystemTestCase
  setup do
    @servicetype = servicetypes(:one)
  end

  test "visiting the index" do
    visit servicetypes_url
    assert_selector "h1", text: "Servicetypes"
  end

  test "creating a Servicetype" do
    visit servicetypes_url
    click_on "New Servicetype"

    fill_in "Name", with: @servicetype.name
    click_on "Create Servicetype"

    assert_text "Servicetype was successfully created"
    click_on "Back"
  end

  test "updating a Servicetype" do
    visit servicetypes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @servicetype.name
    click_on "Update Servicetype"

    assert_text "Servicetype was successfully updated"
    click_on "Back"
  end

  test "destroying a Servicetype" do
    visit servicetypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Servicetype was successfully destroyed"
  end
end
