require "application_system_test_case"

class RecipesTest < ApplicationSystemTestCase
  setup do
    @recipe = recipes(:one)
  end

  test "visiting the index" do
    visit recipes_url
    assert_selector "h1", text: "Recipes"
  end

  test "creating a Recipe" do
    visit recipes_url
    click_on "New Recipe"

    fill_in "Calories recipe", with: @recipe.calories_recipe
    fill_in "Id category", with: @recipe.id_category
    fill_in "Id recipe", with: @recipe.id_recipe
    fill_in "Id user", with: @recipe.id_user
    fill_in "Name recipe", with: @recipe.name_recipe
    fill_in "Preparation recipe", with: @recipe.preparation_recipe
    fill_in "Time recipe", with: @recipe.time_recipe
    click_on "Create Recipe"

    assert_text "Recipe was successfully created"
    click_on "Back"
  end

  test "updating a Recipe" do
    visit recipes_url
    click_on "Edit", match: :first

    fill_in "Calories recipe", with: @recipe.calories_recipe
    fill_in "Id category", with: @recipe.id_category
    fill_in "Id recipe", with: @recipe.id_recipe
    fill_in "Id user", with: @recipe.id_user
    fill_in "Name recipe", with: @recipe.name_recipe
    fill_in "Preparation recipe", with: @recipe.preparation_recipe
    fill_in "Time recipe", with: @recipe.time_recipe
    click_on "Update Recipe"

    assert_text "Recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipe" do
    visit recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipe was successfully destroyed"
  end
end
