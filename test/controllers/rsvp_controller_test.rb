require 'test_helper'

class RsvpControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rsvp_index_url
    assert_response :success
  end

  test "should get success" do
    get rsvp_success_url
    assert_response :success
  end

end
