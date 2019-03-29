require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new userID: "AF45EF3"
  end

  test "not empty uiserID should be valid" do
    assert @user.valid?
  end

  test "userID should be present" do
    @user.userID = "   "
    assert_not @user.valid?
  end

  test "dub user should be invalid" do
    dup_user = @user.dup
    dup_user.userID.upcase!
    @user.save
    assert_not dup_user.valid?
  end

  test "userID shold be saved in upcase" do
    uID = "AsDf"
    @user.userID = uID
    @user.save
    assert_equal uID.upcase, @user.reload.userID
  end
  # test "the truth" do
  #   assert true
  # end
end
