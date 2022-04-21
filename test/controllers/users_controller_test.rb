require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { birthday: @user.birthday, details: @user.details, email: @user.email, first_name: @user.first_name, flag_count: @user.flag_count, is_admin: @user.is_admin, is_restricted: @user.is_restricted, last_name: @user.last_name, location: @user.location, password_digest: @user.password_digest, profile_pic: @user.profile_pic } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { birthday: @user.birthday, details: @user.details, email: @user.email, first_name: @user.first_name, flag_count: @user.flag_count, is_admin: @user.is_admin, is_restricted: @user.is_restricted, last_name: @user.last_name, location: @user.location, password_digest: @user.password_digest, profile_pic: @user.profile_pic } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
