require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  
  test "comment" do 
    user = FactoryGirl.create(:user)
    sign_in user

    place = FactoryGirl.create(:place)

    assert_difference 'Comment.count' do
      post :create, :place_id => place.id, :comment => { :message => 'This is a test', :rating => 'one star'}
    end
    assert_redirected_to place_path(place)
    assert_equal 1, user.comments.count
  end
end
