require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new userID: "AF45EF3"
  end

  test "not empty uiserID should be valid" do
    assert @user.valid?
  end
  # test "the truth" do
  #   assert true
  # end
end
