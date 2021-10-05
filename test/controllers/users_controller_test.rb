require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { address_user: @user.address_user, avatar_user: @user.avatar_user, country_user: @user.country_user, name_pantry_user: @user.name_pantry_user, name_user: @user.name_user, phone_user: @user.phone_user } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { address_user: @user.address_user, avatar_user: @user.avatar_user, country_user: @user.country_user, name_pantry_user: @user.name_pantry_user, name_user: @user.name_user, phone_user: @user.phone_user } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
