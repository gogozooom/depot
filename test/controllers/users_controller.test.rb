require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    login_as users(:one)
  end
end
