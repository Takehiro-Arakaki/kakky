require "application_system_test_case"

class Admin::SelectsTest < ApplicationSystemTestCase
  setup do
    @admin_select = admin_selects(:one)
  end

  test "visiting the index" do
    visit admin_selects_url
    assert_selector "h1", text: "Admin/Selects"
  end

  test "creating a Select" do
    visit admin_selects_url
    click_on "New Admin/Select"

    fill_in "Content", with: @admin_select.content
    check "Is right" if @admin_select.is_right
    fill_in "Question", with: @admin_select.question_id
    click_on "Create Select"

    assert_text "Select was successfully created"
    click_on "Back"
  end

  test "updating a Select" do
    visit admin_selects_url
    click_on "Edit", match: :first

    fill_in "Content", with: @admin_select.content
    check "Is right" if @admin_select.is_right
    fill_in "Question", with: @admin_select.question_id
    click_on "Update Select"

    assert_text "Select was successfully updated"
    click_on "Back"
  end

  test "destroying a Select" do
    visit admin_selects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Select was successfully destroyed"
  end
end
