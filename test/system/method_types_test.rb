require "application_system_test_case"

class MethodTypesTest < ApplicationSystemTestCase
  setup do
    @method_type = method_types(:one)
  end

  test "visiting the index" do
    visit method_types_url
    assert_selector "h1", text: "Method Types"
  end

  test "creating a Method type" do
    visit method_types_url
    click_on "New Method Type"

    fill_in "Description", with: @method_type.description
    fill_in "Diagnosis", with: @method_type.diagnosis
    fill_in "Macroscopy", with: @method_type.macroscopy
    click_on "Create Method type"

    assert_text "Method type was successfully created"
    click_on "Back"
  end

  test "updating a Method type" do
    visit method_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @method_type.description
    fill_in "Diagnosis", with: @method_type.diagnosis
    fill_in "Macroscopy", with: @method_type.macroscopy
    click_on "Update Method type"

    assert_text "Method type was successfully updated"
    click_on "Back"
  end

  test "destroying a Method type" do
    visit method_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Method type was successfully destroyed"
  end
end
