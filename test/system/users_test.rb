require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Address user", with: @user.address_user
    fill_in "Avatar user", with: @user.avatar_user
    fill_in "Country user", with: @user.country_user
    fill_in "Name pantry user", with: @user.name_pantry_user
    fill_in "Name user", with: @user.name_user
    fill_in "Phone user", with: @user.phone_user
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Address user", with: @user.address_user
    fill_in "Avatar user", with: @user.avatar_user
    fill_in "Country user", with: @user.country_user
    fill_in "Name pantry user", with: @user.name_pantry_user
    fill_in "Name user", with: @user.name_user
    fill_in "Phone user", with: @user.phone_user
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
