require "application_system_test_case"

class SelectsTest < ApplicationSystemTestCase
  setup do
    @select = selects(:one)
  end

  test "visiting the index" do
    visit selects_url
    assert_selector "h1", text: "Selects"
  end

  test "creating a Select" do
    visit selects_url
    click_on "New Select"

    click_on "Create Select"

    assert_text "Select was successfully created"
    click_on "Back"
  end

  test "updating a Select" do
    visit selects_url
    click_on "Edit", match: :first

    click_on "Update Select"

    assert_text "Select was successfully updated"
    click_on "Back"
  end

  test "destroying a Select" do
    visit selects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Select was successfully destroyed"
  end
end
