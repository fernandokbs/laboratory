require "application_system_test_case"

class OrgansTest < ApplicationSystemTestCase
  setup do
    @organ = organs(:one)
  end

  test "visiting the index" do
    visit organs_url
    assert_selector "h1", text: "Organs"
  end

  test "creating a Organ" do
    visit organs_url
    click_on "New Organ"

    click_on "Create Organ"

    assert_text "Organ was successfully created"
    click_on "Back"
  end

  test "updating a Organ" do
    visit organs_url
    click_on "Edit", match: :first

    click_on "Update Organ"

    assert_text "Organ was successfully updated"
    click_on "Back"
  end

  test "destroying a Organ" do
    visit organs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organ was successfully destroyed"
  end
end
