require 'test_helper'

class AdminTest < ActiveSupport::TestCase

  def setup
    @admin = Admin.new password: "testBAR", password_confirmation: "test_bar"
  end

  test "password should be present" do
    @admin.password = @admin.password_confirmation = " " * 10
    assert_not @admin.valid?
  end

  test "password should long enough" do
    @admin.password = @admin.password_confirmation = "a" * 5
    assert_not @admin.valid?
  end

  # test "the truth" do
  #   assert true
  # end
end
