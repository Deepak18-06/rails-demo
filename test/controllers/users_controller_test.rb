require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get Signin" do
    get users_Signin_url
    assert_response :success
  end

  test "should get Signup" do
    get users_Signup_url
    assert_response :success
  end
end
