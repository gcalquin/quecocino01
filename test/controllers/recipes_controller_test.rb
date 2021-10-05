require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_url
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post recipes_url, params: { recipe: { calories_recipe: @recipe.calories_recipe, id_category: @recipe.id_category, id_recipe: @recipe.id_recipe, id_user: @recipe.id_user, name_recipe: @recipe.name_recipe, preparation_recipe: @recipe.preparation_recipe, time_recipe: @recipe.time_recipe } }
    end

    assert_redirected_to recipe_url(Recipe.last)
  end

  test "should show recipe" do
    get recipe_url(@recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_url(@recipe)
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { calories_recipe: @recipe.calories_recipe, id_category: @recipe.id_category, id_recipe: @recipe.id_recipe, id_user: @recipe.id_user, name_recipe: @recipe.name_recipe, preparation_recipe: @recipe.preparation_recipe, time_recipe: @recipe.time_recipe } }
    assert_redirected_to recipe_url(@recipe)
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete recipe_url(@recipe)
    end

    assert_redirected_to recipes_url
  end
end
