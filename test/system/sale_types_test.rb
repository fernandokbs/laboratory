require "application_system_test_case"

class SaleTypesTest < ApplicationSystemTestCase
  setup do
    @sale_type = sale_types(:one)
  end

  test "visiting the index" do
    visit sale_types_url
    assert_selector "h1", text: "Sale Types"
  end

  test "creating a Sale type" do
    visit sale_types_url
    click_on "New Sale Type"

    fill_in "Name", with: @sale_type.name
    click_on "Create Sale type"

    assert_text "Sale type was successfully created"
    click_on "Back"
  end

  test "updating a Sale type" do
    visit sale_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @sale_type.name
    click_on "Update Sale type"

    assert_text "Sale type was successfully updated"
    click_on "Back"
  end

  test "destroying a Sale type" do
    visit sale_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sale type was successfully destroyed"
  end
end
