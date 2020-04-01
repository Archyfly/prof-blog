require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should not save user without email" do
    user = User.new
    assert_not user.save, "Cannot save User without email"
  end
  
end
