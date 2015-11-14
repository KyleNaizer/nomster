require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "hum_test" do 
    comment = Comment.new(:rating => '1_star').humanized_rating
    expected = 'one star'
    actual = comment
    assert_equal expected, actual
  end 
end