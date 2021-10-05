require "application_system_test_case"

class StaticsTest < ApplicationSystemTestCase
  setup do
    @static = statics(:one)
  end

  test "visiting the index" do
    visit statics_url
    assert_selector "h1", text: "Statics"
  end

  test "creating a Static" do
    visit statics_url
    click_on "New Static"

    fill_in "Count menu", with: @static.count_menu
    fill_in "Id menu", with: @static.id_menu
    fill_in "Id statics", with: @static.id_statics
    fill_in "Score menu", with: @static.score_menu
    click_on "Create Static"

    assert_text "Static was successfully created"
    click_on "Back"
  end

  test "updating a Static" do
    visit statics_url
    click_on "Edit", match: :first

    fill_in "Count menu", with: @static.count_menu
    fill_in "Id menu", with: @static.id_menu
    fill_in "Id statics", with: @static.id_statics
    fill_in "Score menu", with: @static.score_menu
    click_on "Update Static"

    assert_text "Static was successfully updated"
    click_on "Back"
  end

  test "destroying a Static" do
    visit statics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Static was successfully destroyed"
  end
end
