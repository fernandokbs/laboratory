require "application_system_test_case"

class TypeServicesTest < ApplicationSystemTestCase
  setup do
    @type_service = type_services(:one)
  end

  test "visiting the index" do
    visit type_services_url
    assert_selector "h1", text: "Type Services"
  end

  test "creating a Type service" do
    visit type_services_url
    click_on "New Type Service"

    fill_in "Name", with: @type_service.name
    click_on "Create Type service"

    assert_text "Type service was successfully created"
    click_on "Back"
  end

  test "updating a Type service" do
    visit type_services_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type_service.name
    click_on "Update Type service"

    assert_text "Type service was successfully updated"
    click_on "Back"
  end

  test "destroying a Type service" do
    visit type_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type service was successfully destroyed"
  end
end
