require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "valid user" do
  	user = users(:glenn)
  	assert user.valid?
  end

  test "validates user id" do
  	user = users(:bob)
  	m = user.messages.new
  	assert_not m.save, 'Should not save w/o user id'
  end
end
